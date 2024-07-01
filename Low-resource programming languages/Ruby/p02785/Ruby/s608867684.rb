n, k = gets.strip.split.map(&:to_i)
ary = gets.strip.split.map(&:to_i).sort.reverse
if k != 0 && k < n
  ary.shift(k)
  puts ary.inject(&:+)
elsif k >= n
  puts 0
else
  puts ary.inject(&:+)
end

