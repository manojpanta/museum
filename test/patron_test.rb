require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'

class PatronTest<MiniTest::Test

  def test_if_it_exists
    bob = Patron.new
    assert_instance_of Patron, bob
  end






end
