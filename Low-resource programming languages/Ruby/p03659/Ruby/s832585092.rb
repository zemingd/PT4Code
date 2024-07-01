gets
as = gets.split.map &:to_i

s = as[0]
r = as.inject(:+) - 2 * as[0] 
diff = (s - r).abs

before = diff
as[1, as.size - 1].each do |a|
  s += a
  r -= a
  tmp = (s - r).abs

  diff = tmp if tmp < diff
end

puts diff