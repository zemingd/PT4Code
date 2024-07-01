n, m = gets.split.map(&:to_i)
tops = gets.split.map(&:to_i).sort
diff = []
(0..tops.size-2).each do |i|
  diff << tops[i+1] - tops[i]
end

if n >= m
  puts 0
else
  puts diff.sort[0..(m-n-1)].inject(:+)
end