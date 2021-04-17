
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # get '/' do
  #   erb :index
  # end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do
    erb :articles/new
  end

  get '/articles/:id' do
    @article = Article.find(params["id"])
    erb :articles/show
  end

  post '/articles' do
    article = articles.build(params)
    article.save
    redirect '/articles'
  end

end
