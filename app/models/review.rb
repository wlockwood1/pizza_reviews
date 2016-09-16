class Review < ActiveRecord::Base
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def review_infowindow
    "<h3><a href='#{url}' target='_blank'>Name: #{name}</a></h3>
    Address: #{address}</br>
    Score: #{score}"
  end


  def review_picture

  end
end
