# + name
# + description
# + researcher_id

class Insect < ActiveRecord::Base
  
  validates :name, presence: true
  validates :description, presence: true
  
  belongs_to :researcher
  has_many :papers
  has_and_belongs_to_many :locations
end
