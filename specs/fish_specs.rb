require_relative("../fish.rb")
require_relative("../bears.rb")
require_relative("../rivers.rb")
require("minitest/autorun")
require("minitest/rg")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
  end

  def test_get_name
    assert_equal(@fish1.name, "Nemo")
  end
end
