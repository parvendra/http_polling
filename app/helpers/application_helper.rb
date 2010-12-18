module ApplicationHelper
  def title
    base_title = "HTTP Poling"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    logo = image_tag("rails.png", :alt => "HTTP Poling", :class => "round")
  end

end
