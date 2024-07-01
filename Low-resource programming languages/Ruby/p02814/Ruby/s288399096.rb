N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).uniq

l = 1
A.each {|a| l = l.lcm(a/2)}

require "prime"
b = A.map{|a| a.prime_division.to_h[2] || 0 }

if b.min == b.max
  m = M / l
  if m % 2 == 1
    puts m / 2 + 1
  else
    puts m / 2
  end
else
  puts 0
end
