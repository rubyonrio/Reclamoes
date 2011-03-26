require 'rubygems'
require 'twitter'
require 'tweet'

module ApplicationHelper

	def tweets(hash_tag="reclamoes")
		search = Twitter::Search.new
		result = search.hashtag(hash_tag)
		array = result.to_a
		puts array.inspect
		tweets = Tweet.cria_tweets(array) 

		return tweets
	end

  
end
