class Cell
  def initialize(alive = false)
    @alive = alive
  end

  def alive_next?(neighbors)
    if @alive
      neighbors == 2 || neighbors == 3
    else
      dead? && neighbors == 3
    end
  end

  def dead?
    !@alive
  end
end

class World
  def initialize(initial_state)

  end

  def to_S
    "1"
  end
end
