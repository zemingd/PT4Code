n = gets.to_i
order = gets.split.map(&:to_i)
fault = 0
n.times { |i| fault += 1 if (i + 1) != order[i] }
puts fault < 3 ? 'YES' : 'NO'
