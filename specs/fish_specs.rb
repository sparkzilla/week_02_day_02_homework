require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("Shamu")
    @fish2 = Fish.new("Flipper")

  end

  def test_name
    assert_equal("Flipper", @fish2.name)
  end

end
