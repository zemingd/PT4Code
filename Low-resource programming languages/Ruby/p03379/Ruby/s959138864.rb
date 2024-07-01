$N = gets.chomp.to_i

$X = gets.chomp.split(' ').map(&:to_i)

half = $N / 2

$N.times do |i|
  x = $X.clone
  x.delete_at(i)
  puts x.sort[half - 1]
end