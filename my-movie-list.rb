class MyMovieList < Sinatra::Base
	get '/' do
		File.read(File.join('public', 'index.html'))	
	end
end
