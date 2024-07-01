require 'set'

h, w = gets.split.map(&:to_i)
black_cells = Set.new
white_cells = Set.new

h.times do |i|
  gets.chomp.each_char.with_index do |ch, j|
    black_cells << [i, j] if ch == '#'
    white_cells << [i, j] if ch == '.'
  end
end

def round(idx, upper_limit)
  return 0 if idx.negative?
  return upper_limit if idx > upper_limit
  idx
end

def get_neighbour(row, column, hight, width)
  upper = round(row - 1, hight)
  lower = round(row + 1, hight)
  right = round(column - 1, width)
  left = round(column + 1, width)
  [[upper, column], [lower, column], [row, right], [row, left]]
end

cnt = 0

loop do
  tmp = Set.new
  black_cells.each do |i, j|
    tmp << [i, j]
    get_neighbour(i, j, h, w).each do |cell|
      tmp << cell if white_cells.delete?(cell)
    end
  end
  black_cells = tmp
  cnt += 1
  break if white_cells.empty?
end

puts cnt