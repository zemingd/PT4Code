n =gets.to_i
a = gets.split.map(&:to_i)
hash = Hash.new(0)
a.each do |i|
  hash[i] += 1
end
n.times do |i|
  sum = hash[i+1]
  puts sum
end