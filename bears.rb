class Bear

  attr_reader :name, :stomach_contents

  def initialize(name)
    @name = name
    @stomach_contents = []
  end


  def eats_fish(fish, river)
    @stomach_contents.push(fish)
    river.fish_gets_eaten(fish)
  end

end
