class World

  ALIVE = 1
  DEAD = 0

  def initialize()
    @cells = Array.new(16, DEAD)
  end

  def size
    @cells.size
  end

  def alive?(cell)
    @cells[cell] == ALIVE
  end

  def dead?(cell)
    !alive?(cell)
  end

  def toggle_life(cell)
    current_state = @cells[cell]
    next_state = current_state == ALIVE ? DEAD : ALIVE
    @cells[cell] = next_state
  end

  def neighbors(cell)
    top = cell - 4
    top_right = cell - 3
    right = cell + 1
    bottom_right = cell + 5
    bottom = cell + 4
    bottom_left = cell + 3
    left = cell - 1
    top_left = cell - 5
    neighbors = []

    neighbors << @cells[top_left]
    neighbors << @cells[top]
    neighbors << @cells[top_right]
    neighbors << @cells[left]
    neighbors << @cells[right]
    neighbors << @cells[bottom_right]
    neighbors << @cells[bottom]
    neighbors << @cells[bottom_left]

    neighbors
  end

end
