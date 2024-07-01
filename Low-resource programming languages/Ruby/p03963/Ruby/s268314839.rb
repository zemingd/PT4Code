n,k = gets.split.map do |i| i.to_i end

count = k

(n-1).times do |i|
  count *= k-1
end

puts count