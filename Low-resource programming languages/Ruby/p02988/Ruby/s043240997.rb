N = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i)
count = 0
P.each_cons(3) do |a, b, c|
  count += 1 if [a, b, c].sort[1] == b
end
puts count
