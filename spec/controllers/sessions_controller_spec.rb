require 'spec_helper'

describe SessionsController do

  describe "GET 'create'" do
    it "should be successful" do
      
      controller.stub!(:auth).and_return({:uid => "123456789"})
    
      get 'create'
      response.should be_success
      
      session[:uid].should eq("123456789")
    end
  end

  describe "GET 'destroy'" do
    it "should be successful" do
      get 'destroy'
      response.should be_success
    end
  end
  
end
