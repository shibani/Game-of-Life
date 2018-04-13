require 'minitest/autorun'
require './lib/world'

class WorldTest < Minitest::Test

  def test_that_it_has_a_4x4_world
    world = World.new
    assert_equal 16, world.size
  end

  def test_cells_start_dead
    world = World.new
    assert world.dead?(0)
  end

  def test_cells_can_toggle_aliveness
    world = World.new

    world.toggle_life(10)
    assert world.alive?(10)

    world.toggle_life(10)
    assert world.dead?(10)
  end

  def test_cell_returns_neighbors
    world = World.new
    world.toggle_life(5)
    world.toggle_life(8)
    world.toggle_life(10)
    world.toggle_life(13)

    neighbors = world.neighbors(9)

    assert_equal [0, 1, 0, 1, 1, 0, 1, 0], neighbors
  end

end
