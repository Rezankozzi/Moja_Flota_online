module ApplicationHelper
  def github_url(author, repo)
    link_to 'Moja_flota_online Project', "https://github.com/#{author}/#{repo}", target: '_blank'
  end

  def current_year
    Time.now.year
  end
end
