H, W = gets.split.map(&:to_i)
M = H.times.map{gets.chomp}

ch = H.times.reject{|y| W.times.all?{|x| M[y][x] == '.'} }
cw = W.times.reject{|x| H.times.all?{|y| M[y][x] == '.'} }


ch.each do |y|
  puts cw.map{|x| M[y][x] }.join
end
