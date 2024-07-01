n, k = gets.chomp.split.map(&:to_i)
ary1 = gets.chomp.split.map(&:to_i)
ary1.sort!
if k>=ary1.length 
  puts 0
else
  hps = ary1[0..n-1-k]
  sum1 = hps.inject(&:+)
  puts sum1
end
