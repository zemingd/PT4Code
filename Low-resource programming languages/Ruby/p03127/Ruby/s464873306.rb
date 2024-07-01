n = gets
arr = gets.split(" ").map(&:to_i)
res = arr.pop
arr.each do |v|
  res = res.gcd(v)
end
puts res