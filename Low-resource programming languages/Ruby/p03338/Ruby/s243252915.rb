N = gets.to_i
S = gets

str = S.split('')
m = 0

N.times do |n|
  x = str[0..n]
  y = str[n+1..N]
  s = (x.to_a.uniq & y.to_a.uniq).size
  m = [s, m].max
end

puts m
