require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "HTTP Poling | Home")
    end  
    
  end

  describe "GET 'waiting'" do
    it "should be successful" do
      get 'waiting'
      response.should be_success
    end
    it "should have the right title" do
      get 'waiting'
      response.should have_selector("title",
                        :content => "HTTP Poling | Wait")
    end  
    
  end

  describe "GET 'result'" do
    it "should be successful" do
      get 'result'
      response.should be_success
    end
    it "should have the right title" do
      get 'result'
      response.should have_selector("title",
                        :content => "HTTP Poling | Result")
    end  
    
  end

end
