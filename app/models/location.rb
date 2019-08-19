class Location < ApplicationRecord
has_many :reviews, dependent: :destroy 
validates :name, :place, :content, presence: true

# scope :search_place, -> { (where(place: "#{location.place}"))}

end
