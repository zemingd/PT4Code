require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

ans = 0
(a+1).times do |i|
  (b+1).times do |j|
    (c+1).times do |k|
      ans+=1 if i * 500 + j * 100 + k * 50 == x
    end
  end
end

puts ans
