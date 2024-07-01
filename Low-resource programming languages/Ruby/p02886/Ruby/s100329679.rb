n = gets.to_i
d = gets.chomp.split.map(&:to_i)
count = 0
(n-1).times do |i|
  (i+1..n-1).each do |j|
    count += d[i]*d[j]
  end
end

print count