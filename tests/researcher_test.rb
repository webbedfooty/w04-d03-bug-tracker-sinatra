require "test_helper"
require_relative "../lib/researcher.rb"

class ResearcherTest < Minitest::Test
  
  def test_if_valid_without_a_name
    r = Researcher.new(name: "Andrew", age: 30)
    assert(r.valid?, "Should be valid initially")

    r.name = nil
    refute(r.valid?, "should be invalid with a nil name")
  end

  def test_if_valid_with_a_blank_name
    r = Researcher.new(name: "Andrew", age: 30)
    assert(r.valid?, "Should be valid initially")

    r.name = ""
    refute(r.valid?, "should be invalid with a blank name")
  end

  def test_if_valid_with_valid_age
    r = Researcher.new(name: "Andrew", age: 30)
    assert(r.valid?)
  end

  def test_if_valid_with_nil_age
    r = Researcher.new(name: "Andrew", age: 30)
    assert(r.valid?, "Should be valid initially")
    
    r.age = nil
    refute(r.valid?, "should be invalid with a nil age")
  end

  def test_if_valid_with_underage_age
    r = Researcher.new(name: "Andrew", age: 30)
    assert(r.valid?, "Should be valid initially")
    
    r.age = 20
    refute(r.valid?, "should be invalid with underage age")
  end

  def test_if_valid_with_on_the_cusp_age
    r = Researcher.new(name: "Andrew", age: 30)
    assert(r.valid?, "Should be valid initially")
    
    r.age = 21
    assert(r.valid?, "should be valid with age of 21")
  end

    
    
end
