require 'spec_helper'

describe "Layouts" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Waiting page at '/wait'" do
    get '/wait'
    response.should have_selector('title', :content => "Wait")
  end
  it "should have the right links on the layout" do
    visit root_path
    click_link "Click Here to Search"
    response.should have_selector('title', :content => "Wait")
  end
  describe "wait" do
    before(:each) do
      get '/wait'
    end
    it "should have the status" do
      response.should have_selector('span', {:id => "status", :content => "0"})
    end
    it "should have the status changing" do
      xhr :get, '/polling'
      response.body.should == "0"
      
      $search_instances[session[:remember_token]].status = 50
      xhr :get, '/polling'
      response.body.should == "50"
    end
  end
end
