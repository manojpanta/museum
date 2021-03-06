require './lib/museum'
require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'

class MuseumTest < MiniTest::Test

  def test_if_it_exists
    skip
    dmns = Museum.new
    assert_instance_of Museum, dmns
  end

  def test_it_has_a_name
    skip
    dmns = Museum.new
    assert_equal 'Denver Museum of Nature and Science', dmns.name
  end

  def test_we_can_add_exhibits
    skip
    dmns = Museum.new
    dmns.add_exhibit('Dead Sea Scrolls', 10)
    result = {'Dead Sea Scrolls' => 10}
    assert_equal result, dmns.exhibits
    assert_equal 10, dmns.exhibits['Dead Sea Scrolls']

  end

  def test_we_can_add_multiple_exhibits
    skip
    dmns = Museum.new
    dmns.add_exhibit('Dead Sea Scrolls', 10)
    dmns.add_exhibit('Gems and Minerals', 0)
    assert_equal 2, dmns.exhibits.count
  end

  def test_museum_has_revenue
    skip
    dmns = Museum.new
    assert_equal 0, dmns.revenue
  end

  def test_we_can_increase_revenue_by_addmitting_patron
    skip
    dmns = Museum.new
    bob = Patron.new('Bob')
    dmns.add_exhibit('Dead Sea Scrolls', 10)
    dmns.add_exhibit('Gems and Minerals', 0)
    dmns.admit(bob)
    assert_equal 10, dmns.revenue
  end


  def test_we_can_admit_multiple_patrons
    skip
    dmns = Museum.new
    bob = Patron.new('Bob')
    sally = Patron.new('Sally')

    bob.add_interest('Gems and Minerals')
    bob.add_interest('Dead Sea Scrolls')
    bob.add_interest('Imax')

    sally.add_interest('Dead Sea Scrolls')

    dmns.add_exhibit('Dead Sea Scrolls', 10)
    dmns.add_exhibit('Gems and Minerals', 0)
    dmns.admit(bob)
    dmns.admit(sally)

    assert_equal 40, dmns.revenue
  end

  def test_patron_of_an_exhibit
    dmns = Museum.new
    bob = Patron.new('Bob')
    sally = Patron.new('Sally')
    bob.add_interest('Gems and Minerals')
    bob.add_interest('Dead Sea Scrolls')
    bob.add_interest('Imax')

    sally.add_interest('Dead Sea Scrolls')

    dmns.add_exhibit('Dead Sea Scrolls', 10)
    dmns.add_exhibit('Gems and Minerals', 0)

    dmns.admit(bob)
    dmns.admit(sally)
    assert_equal 40, dmns.revenue
    assert_equal ['Bob','Sally'], dmns.patrons_of('Dead Sea Scrolls')
    assert_equal ['Bob'], dmns.patrons_of('Gems and Minerals')
    assert_equal [], dmns.patrons_of('Imax')
  end
end
