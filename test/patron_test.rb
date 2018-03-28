require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'

class PatronTest < MiniTest::Test
  def test_if_it_exists
    bob = Patron.new
    assert_instance_of Patron, bob
  end

  def test_it_has_a_name
    bob = Patron.new
    assert_equal 'Bob', bob.name
  end

  def test_we_can_add_interests
    bob = Patron.new
    bob.add_interest('Dead Sea Scrolls')
    bob.add_interest('Gems and Minerals')
    assert_equal ['Dead Sea Scrolls', 'Gems and Minerals'], bob.interests
  end
end
