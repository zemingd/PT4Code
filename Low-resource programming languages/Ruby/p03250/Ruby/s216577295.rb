A,B,C = gets.split.map(&:to_i)

a = 10*A+B+C
b = 10*B+A+C
c = 10*C+A+B

r = Array.new
r[0] = a
r[1] = b
r[2] = c

max = -10000
for i in 0..2
 if r[i] > max
  max = r[i]
 end
end

puts(max)
