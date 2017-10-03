require_relative("../rivers.rb")
require_relative("../fish.rb")
require_relative("../bears.rb")
require("minitest/autorun")
require("minitest/rg")

class TestRivers < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Wanda")
    @fish3 = Fish.new("Gudgeon")
    @fish4 = Fish.new("Krusty")
    @fish5 = Fish.new("Michael")

    @bear1 = Bear.new("Paddington", [@fish5])

    @river1 = River.new("Phoenix", [@fish1, @fish2, @fish3, @fish4])
  end

  def test_get_river_name
    assert_equal(@river1.name, "Phoenix")
  end

  def test_get_contents_of_river
    assert_equal(@river1.fish_in_river, [@fish1, @fish2, @fish3, @fish4])  
  end

  def test_fish_gets_eaten
    @river1.fish_gets_eaten(@fish1, @bear1)
    assert_equal(@river1.fish_in_river, [@fish2, @fish3, @fish4])
  end


end
