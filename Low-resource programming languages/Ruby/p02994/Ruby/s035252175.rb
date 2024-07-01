N, L = gets.split.map(&:to_i)
a = N.times.map do |i|
  L + (i + 1) - 1
end
ans = 0

if L >= 0
  ans = a[1..-1].inject(&:+)
elsif L < 0 && N.abs > L.abs
  ans = a.inject(&:+)
else
  ans = a[0..-2].inject(&:+)
end

puts ans
