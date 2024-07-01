S = gets.strip.to_s
n = S.size
ary = []
(0..n-3).each do |x|
  ary.unshift(((S.slice(x..x+2).to_i)-753).abs)
end
puts ary.min