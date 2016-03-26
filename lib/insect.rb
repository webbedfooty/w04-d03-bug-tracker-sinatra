require "pry"
class Insect
  
  attr_accessor :name, :description, :seen_by, :location

  def initialize(name:, seen_by:, location:, description:)
    @name = name
    @seen_by = seen_by
    @location = location
    @description = description
  end

end

binding.pry
