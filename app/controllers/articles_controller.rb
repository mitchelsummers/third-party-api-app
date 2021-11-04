class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=#{params[:search_term]}&api-key=#{Rails.application.credentials.movie_api[:api_key]})
    render json: response.parse(:json)
  end
end