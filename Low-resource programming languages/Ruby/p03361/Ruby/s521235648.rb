height, width = gets.split(' ').map(&:to_i)
squares = (0...height).map{ gets.chomp.each_char.to_a }

check = proc {|x, y|
  (0...height).include?(y) and
    (0...width).include?(x) and
      squares[y][x] == '#'
}
around = [[-1,0], [1,0], [0,-1], [0,1]]
invalid = squares.find.with_index do |line, y|
  line.find.with_index do |cell, x|
    cell == '#' and
      not around.find{|i,j| check.call(x+i, y+j) }
  end
end
puts(invalid ? 'No' : 'Yes')