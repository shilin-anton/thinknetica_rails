module FooterHelper
  def current_year
    Time.zone.today.year
  end

  def github_url(author, repo)
    link_to 'TestGuru', "https://github.com/#{author}/#{repo}"
  end
end
