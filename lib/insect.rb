# + name
# + location
# + description
# + researcher_id

class Insect < ActiveRecord::Base
  
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true

  def researcher
    Researcher.find_by_id(researcher_id)
  end

  def papers
    Paper.where(insect_id: id)
  end
end
