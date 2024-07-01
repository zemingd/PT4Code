n = gets.to_i
arr = gets.split(' ').map(&:to_i)

map = Hash.new(0)

arr.each do |i|
 map[i] += 1
end

i = 1
while i <= n
 puts map[i]
 i += 1
end