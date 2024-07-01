n = gets.to_i
m = Math.sqrt(n).to_i
arr = []

(1..m).each do |a|
  b = n / a
  arr << [a,b] if n == a*b
end


long = n.size
arr.each do |x|
  long_x = x.max.to_s.chars.size
  long = long_x if long > long_x
end

puts long
