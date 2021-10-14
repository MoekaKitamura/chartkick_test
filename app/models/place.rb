class Place < ApplicationRecord
  geocoded_by :name_en
  after_validation :geocode
end
