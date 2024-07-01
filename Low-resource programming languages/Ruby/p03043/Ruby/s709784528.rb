n, k = gets.chomp.split(" ").map(&:to_i);

sq = []
n.times do |i|
  r = i + 1.0
  if r > k
    sq << 0
  else
    sq << (Math.log2((k / r))).ceil
  end
end

sum = 0.0
sq.each do |i|
  sum += 1.0 / n / (2**i) 
end

puts sum
