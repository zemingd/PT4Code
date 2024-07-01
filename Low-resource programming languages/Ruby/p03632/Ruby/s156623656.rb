a,b,c,d = gets.split.map(&:to_i)
alice = Array.new(101,0)
bob = Array.new(101,0)
sum = []

(a + 1..b).each do |i|
  alice[i] = 1
end

(c + 1..d).each do |j|
  bob[j] = 1
end

(0..100).each do |k|
  sum << alice[k] + bob[k]
end

p sum.count(2)
