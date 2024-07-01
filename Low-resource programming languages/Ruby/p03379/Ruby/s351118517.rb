$N = gets.chomp.to_i

$X = gets.chomp.split(' ').map(&:to_i)

half = $N / 2

sorted = $X.sort

medium = [sorted[half - 1], sorted[half]]

$N.times do |i|
  if medium[0] < $X[i]
    puts medium[0]
  else
    puts medium[1]
  end
end