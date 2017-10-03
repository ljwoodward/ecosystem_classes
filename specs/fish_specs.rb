require_relative("../fish.rb")
require_relative("../bears.rb")
require_relative("../rivers.rb")
require("minitest/autorun")
require("minitest/rg")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Wanda")
    @fish3 = Fish.new("Gudgeon")
    @fish4 = Fish.new("Krusty")
    @fish5 = Fish.new("Michael")

    @bear1 = Bear.new("Paddington", [@fish5])

    @river1 = River.new("Phoenix", [@fish1, @fish2, @fish3, @fish4])
  end

  def test_get_fish_name
    assert_equal(@fish1.name, "Nemo")
  end
end
