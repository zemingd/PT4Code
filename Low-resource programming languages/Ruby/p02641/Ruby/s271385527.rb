x, n = gets.chomp.split.map(&:to_i)
n = gets.chomp.split.map(&:to_i)

int = n.min_by{|num| (num - x).abs}

if x > int
  puts x - 1
elsif x == int
  puts x - 1
end