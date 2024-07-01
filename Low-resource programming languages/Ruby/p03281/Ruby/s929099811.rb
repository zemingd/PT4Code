require "prime"

n = gets.to_s.to_i

ans = 0
1.step(n,2) do |k|
  # p k.prime_division.to_h
  ans += 1 if 8 == k.prime_division.map{|t|t.last}.reduce(1){|cnt, t| cnt * (t+1) } 
  # p k if 8 == k.prime_division.to_h.values.reduce(1){|cnt, t| cnt * (t+1) } 
end

puts ans