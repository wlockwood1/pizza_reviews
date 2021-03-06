class Review < ActiveRecord::Base
  geocoded_by :address   # can also be an IP address
  after_validation :geocode  # auto-fetch coordinates

  validates :review_date, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :score, presence: true

  def review_infowindow
    "<h3><a href='#{url}' target='_blank'>#{name}</a></h3>
    <strong>#{address}</strong></br>
    <strong>Review Date: </strong>#{review_date}</br>
    <strong>Score: </strong>#{score}</br>
    <strong>Guests: </strong>#{guest}"
  end

  def review_marker_picture
    ({
      :url     => "/assets/El_pres.jpg",
      :width   => 26,
      :height  => 34
    })
  end
end
