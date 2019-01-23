class InsitiConnector

  attr_reader :session_token, :user, :password, :url
  URL = Rails.env.production? ? INSITI_API_URL : 'http://localhost:3000/api/v1/'
  # URL = INSITI_API_URL

  def self.build
    new
  end

  def initialize
    @url = URL
  end

  def get_posts path
    posts_url = url + 'posts/' + path
    response = RestClient::Request.execute(
      url: posts_url,
      method: :get,
      verify_ssl: false)
    return nil unless response.code == 200
    ActiveSupport::JSON.decode(response)
  end

  def get_post slug
    post_url = url + 'post/' + slug
    response = RestClient::Request.execute(
      url: post_url,
      method: :get,
      verify_ssl: false)
    return nil unless response.code == 200
    ActiveSupport::JSON.decode(response)
  end

  def get_profile slug
    profile_url = url + 'profiles/' + slug
    response = RestClient::Request.execute(
      url: profile_url,
      method: :get,
      verify_ssl: false)
    return nil unless response.code == 200
    ActiveSupport::JSON.decode(response)
  end

end