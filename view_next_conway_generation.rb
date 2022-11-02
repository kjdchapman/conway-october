def view_next_conway_generation(generation)
  next_generation = []
  generation.each do |row|
    future_row = []
    row.each do |cell|
      living_neighbours = number_of_living_neigbours(generation,row:0,column:0)
      future_row << conway_rule(cell,living_neighbours)
    end
    next_generation << future_row
  end
  next_generation
end

def conway_rule(cell,number_of_living_neigbours)
  :empty
end

def number_of_living_neigbours(grid,row:,column:)
  living_neighbours = 0

  living_neighbours += 1 unless grid == [:empty, :empty]

  living_neighbours
end
