require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup()

    @river = River.new("Amazon")
    @fish1 = Fish.new("Shamu")

  end

  def test_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_count
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish1)
    count = @river.count_fish_in_river
    assert_equal(2, count)
  end

  def test_remove_fish
    @river.remove_fish_from_river(@fish1)
    assert_equal(0, @river.count_fish_in_river)
  end

end
