n = gets.to_i
ws = gets.chomp.split.map(&:to_i)
sum = ws.inject(:+)
diff = 1e9.to_i
(0..n-1).each do |t|
  diff = [(sum - 2 * ws[0..t].inject(:+)).abs,diff].min
end
puts diff