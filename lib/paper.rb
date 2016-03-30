# + author (researcher)
# + title (string)
# + insect it's about (insect)
# + abstract (text)

class Paper < ActiveRecord::Base

  validates :title, presence: true

  belongs_to :researcher
  belongs_to :insect

end
