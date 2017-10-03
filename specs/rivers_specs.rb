require_relative("../rivers.rb")
require_relative("../fish.rb")
require_relative("../bears.rb")
require("minitest/autorun")
require("minitest/rg")

class TestRivers < MiniTest::Test

  def setup
    @river1 = River.new("Phoenix", [@fish1, @fish2, @fish3, @fish4])
  end

  def test_get_river_name
    assert_equal(@river1.name, "Phoenix")
  end


end
