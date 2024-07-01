N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).uniq

require "prime"
B = A.map do |v|
  (v/2).prime_division.inject([]) do |a,e|
    a.concat(Array.new(e[1], e[0]))
  end
end
common = B.inject(B.first){|a,e| a &= e}
all = B.inject(B.first){|a,e| a |= e}

mul = all.inject(1){|a,e| a *= e}

max_m = M / mul
if max_m % 2 == 0
  puts max_m / 2
else
  puts max_m / 2 + 1
end
