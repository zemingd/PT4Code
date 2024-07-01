H, W = gets.split.map(&:to_i)
field = []
H.times do
  field << gets.chomp.split("")
end

failed = false
H.times do |y|
  W.times do |x|
    if field[x][y] == "#"
      flag = false
      [[x, y-1], [x-1, y], [x+1, y], [x, y+1]].each do |array|
        c_x = array[0]
        c_y = array[1]
        next if !c_y.between?(0, H-1) || !c_x.between?(0, W-1)
        if field[c_x][c_y] == "#"
          flag = true
        end
        break if flag
      end # of each
      failed = true unless flag
    end # of if field[x][y] == "#"
    break if failed
  end
  break if failed
end
puts failed ? "No" : "Yes"
