a, b = gets.chomp
count = 0
(1..a).each do |i|
  1..31.each do |j|
    unless i == a && j == b
      count += 1 if i == j
  end
  puts count
end
