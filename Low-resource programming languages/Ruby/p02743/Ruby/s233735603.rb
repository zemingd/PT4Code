require 'complex'

a, b, c = gets.split(" ").map(&:to_i)

a_r = Math.sqrt(a).to_r
b_r = Math.sqrt(b).to_r
c_r = Math.sqrt(c).to_r

if (Math.sqrt(a * b).to_r - c + a + b) * 2.to_r < 0
  puts('Yes')
else
  puts('No')
end