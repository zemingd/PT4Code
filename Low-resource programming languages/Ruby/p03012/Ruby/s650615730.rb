n = gets.to_i
ww = gets.split.map(&:to_i)

min = 1000
0.upto(n-1-1) do |i|
  sum1 = ww[0..i].inject(:+)
  sum2 = ww[i+1..n-1].inject(:+)

  if (sum1-sum2).abs < min
    min = (sum1-sum2).abs
  end
end

puts min