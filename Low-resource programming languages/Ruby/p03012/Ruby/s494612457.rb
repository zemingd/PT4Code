n=gets.to_i
ws=gets.split.map(&:to_i)
diff = []
(0..n-2).each do |i|
  ans = (ws[0..i].inject(:+) - ws[i+1..-1].inject(:+)).abs
  diff << ans
end
puts diff.min