require 'test_helper'

class NamedaliasTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Namedalias.new.valid?
  end
end
