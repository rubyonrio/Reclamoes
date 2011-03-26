require 'spec_helper'

describe Tweet do
  
  it "should return empty array given an empty JSON was passed" do
    result = Tweet.cria_tweets []
    result.size.should == 0
    result.should_not be_nil
  end
  
  it "should return one tweet" do
    result = Tweet.cria_tweets( [{user:"rafa",description:"tweet qq",created_at:Date.today}])
    result.size.should == 1
    result.first.user.should == "rafa"
    result.first.description.should == "tweet qq"
    result.first.date.should == Date.today
  end
  
  it "should return one tweet" do
    result = Tweet.cria_tweets( [{user:"rafa",description:"tweet qq",created_at:Date.today},
                                {user:"diego",description:"tweet de outra coisa",created_at:Date.tomorrow}])
    result.size.should == 2
    
    result[0].user.should == "rafa"
    result[0].description.should == "tweet qq"
    result[0].date.should == Date.today
  
    result[1].user.should == "diego"
    result[1].description.should == "tweet de outra coisa"
    result[1].date.should == Date.tomorrow
  end
  
end