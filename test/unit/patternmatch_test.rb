require 'test_helper'

class PatternmatchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Patternmatch.new.valid?
  end
end
