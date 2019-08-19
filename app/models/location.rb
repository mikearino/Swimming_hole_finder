class Location < ApplicationRecord

validates :name, :place, :content, presence: true

# scope :search_place, -> { (where(place: "#{location.place}"))}

end
