require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Drama Llama Pub")
    @drink = Drink.new("Jack Daniels", 4)
  end

  def test_has_name
    assert_equal("Drama Llama Pub", @pub.name)
  end

  def test_drink_stock__counter
    assert_equal(0, @pub.drink_stock)
  end

  def test_add_drink_stock
    @pub.add_drink_stock(@drink)
    assert_equal(1, @pub.drink_stock)
  end

  def test_remove_drink_stock
    @pub.add_drink_stock(@drink)
    @pub.remove_drink_stock(@drink)
    assert_equal(0, @pub.drink_stock)
  end



end
