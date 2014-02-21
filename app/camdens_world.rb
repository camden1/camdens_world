require 'sinatra/base'
require 'sinatra/respond_to'

class App < Sinatra::Base
  register Sinatra::RespondTo

  set :root, File.dirname(__FILE__)
  set :public_folder, Proc.new { File.join(root, 'public') }
  set :views, Proc.new { File.join(root, 'views') }

  configure do
    set :raise_errors, true
    set :show_exceptions, false
    set :rack_env, environment.to_s
  end

  helpers do
    def query_params
      request.env['rack.request.query_hash']
    end
  end

  get '/' do
    File.read(File.join(settings.public_folder, 'index.html'))
  end


end


