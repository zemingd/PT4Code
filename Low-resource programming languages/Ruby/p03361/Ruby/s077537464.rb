class Grid
  def initialize(rows, width = rows[0].size, height = rows.size)
    @rows = rows
    @width = width
    @height = height
  end

  def [](i, j)
    return nil if i < 0 || j < 0
    @rows.fetch(i){return nil}[j]
  end

  def []=(i, j, v)
    @rows[i][j] = v
  end
end

h, w = gets.split.map(&:to_i)
ss = $<.map(&:chop).map(&:chars)
g = Grid.new(ss)
h.times do |i|
  w.times do |j|
    next if g[i, j] == '.'
    directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    adjacent = []
    directions.each do |d|
      adjacent << g[i+d[0], j+d[1]]
    end
    if !adjacent.include?('#')
      puts 'No'
      exit
    end
  end
end
puts 'Yes'