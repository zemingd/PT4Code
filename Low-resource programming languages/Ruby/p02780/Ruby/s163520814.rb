n,k = STDIN.gets.split.map(&:to_i)
p_i = STDIN.gets.split.map(&:to_i)

p_i.map!{|i| (1.0+i)/2}

ret = 0
0.upto(n-k) do |i|
  tmp = p_i[i, k].inject(&:+)
  ret = [ret, tmp].max
end
puts ret
