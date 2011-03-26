require 'rubygems'
require 'twitter'

module ApplicationHelper

	def tweets(hash_tag="reclamoes")
		search = Twitter::Search.new
		result = search.hashtag(hash_tag);
		result.to_a
	end


end
