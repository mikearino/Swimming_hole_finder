class Location < ApplicationRecord
has_many :reviews, dependent: :destroy
validates :name, :place, :content, presence: true


# scope :search_location, -> { (where(place: "#{location.place}"))}
# scope :rando_destination, -> { (where(place: "#{location.random}"))}
# scope :most_popular, -> { select("locations.id, locations.name, locations.cost, locations.origin, count(reviews.id) as reviews_count")
#   .joins(:reviews)
#   .group("locations.id")
#   .order("reviews_count DESC")
#   .limit(1)}

end
