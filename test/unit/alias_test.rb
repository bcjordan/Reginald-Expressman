require 'test_helper'

class AliasTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Alias.new.valid?
  end
end
