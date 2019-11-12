class River
  attr_reader :name, :fish_in_river

  def initialize(name)
    @name = name
    @fish_in_river = []
  end

  def count_fish_in_river
    return @fish_in_river.size()
  end

  def add_fish_to_river(fish)
    @fish_in_river << fish
  end

  def remove_fish_from_river(fish)
     @fish_in_river.delete(fish)
  end


end
