class Tweet
  
  attr_reader :user, :description, :date
  
  public
  def self.cria_tweets(results)
    return results unless results.size > 0
    tweets = []
    results.each do |hash|
      tweets << Tweet.new(hash[:from_user], hash[:text], hash[:created_at])
    end
    tweets
  end
  
  private
  def initialize(user, description, date) 
    @user = user
    @description = description
    @date = date
  end

end