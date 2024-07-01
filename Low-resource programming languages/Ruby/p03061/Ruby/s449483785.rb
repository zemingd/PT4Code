N = gets.to_i
A = gets.split.map(&:to_i)

lr = []
pr = A.first
A.each do |a|
  lr << pr.gcd(a)
  pr = lr.last
end 

rl = []
pr = A.last
A.reverse.each do |a|
  rl.unshift pr.gcd(a)
  pr = rl.first
end 

m = [lr.last, lr[N - 1], rl[1]].max
for i in 1..(N - 2)
  tmp = lr[i - 1].gcd rl[i + 1]
  m = tmp if tmp > m 
end 
puts m