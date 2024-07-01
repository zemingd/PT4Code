k = gets.to_i
arr = [*1..k]
res = 0
arr.repeated_permutation(3).each do |i|
  res += i.inject{|a,b| a.gcd(b)}
end
puts res