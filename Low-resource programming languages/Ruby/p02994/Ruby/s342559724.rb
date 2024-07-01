N, L = gets.split.map(&:to_i)
a = N.times.map do |i|
  L + (i + 1) - 1
end

if L >= 0
  puts a[1..-1].inject(&:+)
elsif L < 0 && N.abs >= L.abs
  puts a.inject(&:+)
else
  puts a[0..-2].inject(&:+)
end
