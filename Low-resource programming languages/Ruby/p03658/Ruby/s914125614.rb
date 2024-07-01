array = []
n,k = gets.to_i

n.times do |i|
  array[i] = gets.to_i
end

new = array.sort{|a, b| b <=> a }

puts new

ans = 0
k.times do |i|
  ans += new[i]
end

puts ans