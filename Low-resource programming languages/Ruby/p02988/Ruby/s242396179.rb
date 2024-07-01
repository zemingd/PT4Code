n = gets.chomp("").to_i

p = gets.split.map(&:to_i)

count = 0
(n-2).times do |i|
  if p[i] < p[i+1] && p[i+1] < p[i+2] or p[i+2] < p[i+1] && p[i+1] < p[i]
    count += 1
  end
end

puts count
