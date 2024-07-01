n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)

sum = 0
(1..(n-1)).each do |i|
  (0..(i-1)).each do |j|
    sum += d[i]*d[j]
  end
end

puts(sum)