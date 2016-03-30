# + author (researcher)
# + title (string)
# + insect it's about (insect)
# + abstract (text)

class Paper < ActiveRecord::Base

  def researcher
    Researcher.find_by_id(researcher_id)
  end

  def insect
    Insect.find_by_id(insect_id)
  end
end
