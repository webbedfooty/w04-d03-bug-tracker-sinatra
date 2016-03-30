# Researchers are just grad students
# + name: string (this is the name of our grad student peons)
# + age: integer (this is how old they are)

class Researcher < ActiveRecord::Base

  def my_valid?
    if name.nil? || name.empty? 
      false
    elsif age.nil? || age < 21
      false
    else
      true
    end
  end

  def insects
    Insect.where(researcher_id: id)
  end

  def papers
    Paper.where(researcher_id: id)
  end

end
