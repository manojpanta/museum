require './lib/museum'
require 'minitest/autorun'
require 'minitest/pride'

class MuseumTest<MiniTest::Test

  def test_if_it_exists
    dmns = Museum.new
    assert_instance_of Museum, dmns
  end

  def test_it_has_a_name
    dmns = Museum.new
    assert_equal "Denver Museum of Nature and Science", dmns.name
  end

  def test_we_can_add_exhibits
    dmns = Museum.new
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    assert_equal 10, dmns.exhibits["Dead Sea Scrolls"]

  end

  def test_we_can_add_multiple_exhibits
    dmns = Museum.new
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)
    assert_equal 2, dmns.exhibits.count
    # require 'pry'; binding.pry

  end

  def test_museum_has_revenue
    dmns = Museum.new
    

  end



end
