class MultiplicationTable
  attr_reader :grid, :values
  
  def initialize(container)
    @grid = []
    @values = container.values
    make_arrays

  end
  
  # Print a nicely formatted table to terminal
  def print
    puts "Multiplication Table of Prime Numbers"
    table = Terminal::Table.new :title => "#{(grid.length - 1).to_s} prime numbers" do |t|
    
      # For each prime number, create a row
      for x in 0..(grid.length - 1) do

        # Start each row with the prime number
        row = [nil]
        
        for y in 0..(grid.length - 1) do
          row << grid[x][y]
        end
    
        # Add the row as well as a seperator for every row, except the last
        t << row
        t << :separator unless x == (grid.length)
      end
    
    end
    puts table
  end

  private
  
  # Sets self.grid to a two-dimentional array using @values as horizontal and vertical axes.
  def make_arrays

    first_row =  [0] + values
    grid << first_row
    
    values.each do |h_value|
      h_grid = [h_value]
      
      values.each do |v_value|
        h_grid << v_value * h_value
      end
      grid << h_grid
    end
  end
end
