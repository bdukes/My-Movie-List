require 'uri'
require 'mongo'


uri = URI.parse(ENV['MONGOHQ_URL'])
conn = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
db = conn.db(uri.path.gsub(/^\//, ''))
api_key = db['keys'].find_one()
movies = db['movies']

class MyMovieList < Sinatra::Base
	get '/' do
		File.read(File.join('public', 'index.html'))	
	end

	post '/' do
		movies.insert_movies_from_post
	end
end
