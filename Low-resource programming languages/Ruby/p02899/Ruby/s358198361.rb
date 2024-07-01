n = gets.to_i
sort_target = (1..n).to_a
numbers = gets.split(' ').map(&:to_i)

sort_target.each do |idx|
  print (numbers.index(idx)+1).to_s + ' '
end