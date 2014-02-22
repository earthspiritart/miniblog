module ApplicationHelper

  def star_jones(rating = 0)

    stars = ""
    rating.to_i.times do 
    stars += content_tag(:i, " ", class: "icon-star")
    
    end
    if rating > rating.floor
      stars += content_tag(:i, " ", class: "icon-star-half")
      end
    stars.html_safe


  end


end
