class QuestionsController < ApplicationController
  before_action :find_question, only: %i[show destroy]
  before_action :find_test, only: %i[new index]
  before_action :find_questions, only: :index

  def index
    render :index
  end

  def show
    render plain: @question.inspect
  end

  def new
    @question = Question.new
    render :new
  end

  def create
    question = Question.create(question_params)
    question.test_id = params[:test_id]

    question.save

    redirect_to action: :index
  end

  def destroy
    test_id = @question.test_id
    @question.destroy

    redirect_to action: :index, test_id: test_id
  end

  private

  def find_test
    @test = Test.find_by(id: params[:test_id])
    raise StandardError, 'Test not found!' if @test.blank?
  end

  def find_questions
    @questions = Question.where(test_id: @test.id)
  end

  def find_question
    @question = Question.find_by(id: params[:id])
    raise StandardError, 'Question not found!' if @question.blank?
  end

  def question_params
    params.require(:question).permit(:body)
  end
end
