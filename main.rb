require 'sinatra'
require 'rss'

get '/' do
    @rss = RSS::Parser.parse("https://bacchi.me/feed/")
    erb :index
end