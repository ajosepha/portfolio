require 'bundler'
Bundler.require


Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application

    get '/' do
      erb :index
    end

    get '/projects' do
      erb :projects
    end

  

  end
end
