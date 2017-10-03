require_relative("../bears.rb")
require_relative("../fish.rb")
require_relative("../rivers.rb")
require("minitest/autorun")
require("minitest/rg")

class TestBears < MiniTest::Test

  def setup
    @bear1 = Bear.new("Paddington", [@fish5])
  end

  def test_get_bear_name
    assert_equal(@bear1.name, "Paddington")
  end

end
