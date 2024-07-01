n = gets.to_i
m = Math.sqrt(n).to_i
arr = []

(1..m).each do |a|
  b = n / a
  arr << [a,b] if n == a*b
  p arr
end


long = n.to_s.chars.length
arr.each do |x|
  long_x = x.max.to_s.chars.length
  long = long_x if long > long_x
end

puts long
