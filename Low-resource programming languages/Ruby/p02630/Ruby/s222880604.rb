n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
q = gets.to_i
b = Array.new(q).map{Array.new}
q.times do |i|
  b[i] = gets.chomp.split(" ").map(&:to_i)
end
sum = a.inject(:+)
hash = Hash.new(0)
a.each do |x|
  hash[x] += 1
end
q.times do |i|
  hash[b[i][1]] += hash[b[i][0]]
  sum += hash[b[i][0]] * (b[i][1] - b[i][0])
  hash[b[i][0]] = 0
  puts sum
end