require "test_helper"
require_relative "../lib/insect.rb"

class InsectTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    refute_nil(insect)
  end

  def test_not_instantiated_without_a_name
    assert_raises(ArgumentError){Insect.new(description: "Fuzzy and mantis-y", location: "In my shoes", 
                                            seen_by: "Andrew")}
  end

  def test_not_instantiated_without_a_location
    assert_raises(ArgumentError){Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", 
                                            seen_by: "Andrew")}
  end

  def test_not_instantiated_without_a_seen_by
    assert_raises(ArgumentError){Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", 
                                            location: "In my shoes")}
  end

  def test_not_instantiated_without_a_description
    assert_raises(ArgumentError){Insect.new(name: "Fuzzy Mantis", location: "In my shoes", seen_by: "Andrew")}
  end

  def test_has_a_name
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.name = "Giant Gadfly"
    assert_equal("Giant Gadfly", insect.name)
  end

  def test_has_a_description
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.description = "Pretty friendly, but sort of scary looking."
    assert_equal("Pretty friendly, but sort of scary looking.", insect.description)
  end

  def test_has_a_location
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.location = "Chilling on a sweet rock"
    assert_equal("Chilling on a sweet rock", insect.location)
  end

  def test_has_a_seen_by
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.seen_by = "Ruth"
    assert_equal("Ruth", insect.seen_by)
  end
end
