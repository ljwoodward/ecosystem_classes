require_relative("../bears.rb")
require_relative("../fish.rb")
require_relative("../rivers.rb")
require("minitest/autorun")
require("minitest/rg")

class TestBears < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Wanda")
    @fish3 = Fish.new("Gudgeon")
    @fish4 = Fish.new("Krusty")
    @fish5 = Fish.new("Michael")

    @bear1 = Bear.new("Paddington")

    @river1 = River.new("Phoenix", [@fish1, @fish2, @fish3, @fish4])
  end

  def test_get_bear_name
    assert_equal(@bear1.name, "Paddington")
  end

  def test_get_fish_name
    assert_equal(@fish1.name, "Nemo")
  end

  def test_get_river_name
    assert_equal(@river1.name, "Phoenix")
  end

  def test_get_contents_of_bear
    result = @bear1.stomach_contents
    assert_equal([], result)
  end

  def test_get_contents_of_river
    assert_equal(@river1.fish_in_river, [@fish1, @fish2, @fish3, @fish4])
  end

  def test_fish_gets_eaten
    @river1.fish_gets_eaten(@fish1)
    assert_equal(@river1.fish_in_river, [@fish2, @fish3, @fish4])
  end

  def test_eats_fish
    @bear1.eats_fish(@fish1,@river1)
    result = @bear1.stomach_contents
    assert_equal([@fish1], result)
    assert_equal(@river1.fish_in_river, [@fish2, @fish3, @fish4])
  end


end
