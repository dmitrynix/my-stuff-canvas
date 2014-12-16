module StaticApp
  class Application < Sinatra::Base
    get '/' do
      @entries = Dir.entries("public").select { |entry| entry.match(/html/) }
      erb :index
    end

    get '/jquery.min.map' do
      File.read(File.join('public', 'jquery-2.1.1.min.map'))
    end

    get '/:file' do
      File.read(File.join('public', params[:file] + '.html'))
    end
  end
end
