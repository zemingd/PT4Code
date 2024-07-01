n,x = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

if n == 1
  puts (x - xs[0]).abs
  exit
end

tmp = []
n.times do |i|
  break if xs[i+1].nil?
  tmp << (xs[i] - xs[i+1]).abs
end

ans = tmp.reduce(&:gcd)
puts ans
