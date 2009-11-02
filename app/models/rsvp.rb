class Rsvp < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :guest_count
end
