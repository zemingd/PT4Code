(N, M), As = readlines.map{|l| l.split.map(&:to_i)}

if As.map{|a| a.to_s(2).reverse.index('1')}.uniq.size != 1
  puts 0
else
  l = As.map{|a| a/2}.inject(&:lcm)
  puts (M/l + 1)/2
end