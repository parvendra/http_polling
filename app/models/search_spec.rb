require 'spec_helper'

describe Search do
  
  it "should create a new instance" do
    Search.new
  end
  it "should respond to status" do
    search = Search.new
    search.should respond_to(:status)
  end
  it "should respond to start" do
    search = Search.new
    search.should respond_to(:start)
  end
end
