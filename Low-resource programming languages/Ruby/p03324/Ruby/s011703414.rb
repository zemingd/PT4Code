#n = gets.to_s.to_i
d,n = gets.to_s.split.map{|i|i.to_i}
#cts = Array.new(n){ gets.to_s.split.map{|i|i.to_i} }

t = 1
t = 100 if 1 == d
t = 10000 if 2 == d

cnt = 0
ans = n * t

ans += t if n == 100

puts ans