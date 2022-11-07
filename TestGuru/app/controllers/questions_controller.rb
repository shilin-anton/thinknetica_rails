class QuestionsController < ApplicationController
  before_action :find_question, only: %i[show destroy]
  before_action :find_test, only: %i[new index create]

  def index
    @questions = @test.questions
  end

  def show
    render plain: @question.inspect
  end

  def new
    @question = Question.new
  end

  def create
    @question = @test.questions.build(question_params)
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def destroy
    @question.destroy

    redirect_to @question.test
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find_by(id: params[:id])
    raise StandardError, 'Question not found!' if @question.blank?
  end

  def question_params
    params.require(:question).permit(:body)
  end
end
