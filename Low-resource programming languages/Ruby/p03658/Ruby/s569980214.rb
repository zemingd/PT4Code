n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

a = 0
for i in 1..k do
 a += l.sort[-i]
 i += 1
end

puts a