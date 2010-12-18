class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def waiting
    @title = "Wait"
    $search = Search.new
    $search.start

  end

  def polling
    render :text => $search.status
  end
  
  def result
    @title = "Result"
  end

end
