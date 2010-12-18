class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def waiting
    @title = "Wait"
  end

  def result
    @title = "Result"
  end

end
