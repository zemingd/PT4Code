a,b,c,k = gets.chomp.split.map(&:to_i)

if k <= a
  p k
  exit
end

if k <= a + b
  p a
  exit
end

m = k - a - b
p a - m
