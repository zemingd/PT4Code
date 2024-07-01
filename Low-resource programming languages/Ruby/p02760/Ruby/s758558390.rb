bingo = 3.times.map{gets.split.map(&:to_i)}
_b = gets.to_i.times.map{gets.to_i}

(0..2).each do |i|
  (0..2).each do |j|
    bingo[i][j] = 0 if _b.include?(bingo[i][j])
  end
end

result = false
(0..2).each do |i|
  result ||= (0..2).all? { |j| bingo[i][j] == 0 }
end
(0..2).each do |i|
  result ||= (0..2).all? { |j| bingo[j][i] == 0 }
end

result ||= (0..2).all? { |i| bingo[i][i] == 0 }
result ||= (0..2).all? { |i| bingo[2 - i][i] == 0 }

p result ? 'Yes' : 'No'