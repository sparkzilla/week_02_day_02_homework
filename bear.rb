class Bear
  attr_reader :name, :fish_in_stomach

  def initialize(name)
    @name = name
    @fish_in_stomach = []
  end

  def count_fish_in_stomach
    return @fish_in_stomach.size()
  end

  def eat_fish(fish, river)
    @fish_in_stomach << fish
    river.remove_fish_from_river(fish)
  end

  def roar
    return "Roar!"
  end

end
