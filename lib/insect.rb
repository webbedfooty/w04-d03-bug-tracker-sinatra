# + name
# + location
# + description
# + researcher_id

class Insect < ActiveRecord::Base
  
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true

  belongs_to :researcher
  has_many :papers
end
