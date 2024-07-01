A,B = gets.split.map(&:to_i)
m = Array.new
m[0] = A+A-1
m[1] = A+B
m[2] = B+B-1

max = 0
for i in 0..2
 if max < m[i]
  max = m[i]
 end
end

puts(max)