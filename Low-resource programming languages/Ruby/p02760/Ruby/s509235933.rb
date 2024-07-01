as = 3.times.map{gets.chomp.split.map(&:to_i)}
n = gets.to_i
bs = n.times.map{gets.to_i}
bingo = Array.new(3){Array.new(3,0)}
bs.each do |b|
  (0..2).each do |i|
    (0..2).each do |j|
      if as[i][j] == b
        bingo[i][j] = 1
      end
    end
  end
end
flag = false
(0..2).each do |i|
  if bingo[i].all?{|v| v == 1}
    flag = true
  end
  if bingo.transpose[i].all?{|v| v == 1}
    flag = true
  end
  if bingo[0][0] == 1 && bingo[1][1] == 1 && bingo[2][2] == 1
    flag = true
  end
  if bingo[0][2] == 1 && bingo[1][1] == 1 && bingo[2][0] == 1
    flag = true
  end
end
puts flag ? "Yes" : "No" 