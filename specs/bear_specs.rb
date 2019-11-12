require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()

    @bear1 = Bear.new("Yogi")
    @bear2 = Bear.new("Barnaby")

    @fish1 = Fish.new("Shamu")
    @river = River.new("Amazon")

  end

def test_name
  assert_equal("Yogi", @bear1.name)
end

def test_fish_in_stomach
  count = @bear1.count_fish_in_stomach
  assert_equal(0, count)
end

def test_eat_fish
  @river.add_fish_to_river(@fish1)
  @river.add_fish_to_river(@fish2)
  @bear1.eat_fish(@fish1, @river)
  @bear1.eat_fish(@fish2, @river)
  assert_equal(2, @bear1.count_fish_in_stomach)
  assert_equal(0, @river.count_fish_in_river)
end

def test_roar
  assert_equal("Roar!", @bear1.roar) 
end


end
