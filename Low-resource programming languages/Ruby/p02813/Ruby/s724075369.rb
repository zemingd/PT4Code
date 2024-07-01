N = gets.chomp.to_i
str_a = gets.chomp.split.map(&:to_i)
str_b = gets.chomp.split.map(&:to_i)
str = (1..N).map do |num|
  num
end
all = []
str.permutation(N) do |pattern|
  all << pattern
end
all.sort!
puts ((all.find_index(str_a) + 1) - (all.find_index(str_b) + 1)).abs
