module StaticApp
  class Application < Sinatra::Base
    get '/' do
      @entries = Dir.entries("public").select { |entry| entry.match(/html/) }
      erb :index
    end

    get '/:file' do
      File.read(File.join('public', params[:file] + '.html'))
    end
  end
end
