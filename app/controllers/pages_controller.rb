class PagesController < ApplicationController
  def home
    @title = "Home"
    $search_instances ||= {"a" => "dfdsf"}
  end

  def waiting
    @title = "Wait"
    remember_token = session[:remember_token] || "invalid"
   unless($search_instances.has_key?(remember_token))
      search = Search.new
      search.start
      session[:remember_token] = search.to_s
      $search_instances[search.to_s] = search
    end
  end

  def polling
    render :text => $search_instances[session[:remember_token]].status
  end
  
  def result
    session.delete(:remember_token)
    @title = "Result"
  end

end
