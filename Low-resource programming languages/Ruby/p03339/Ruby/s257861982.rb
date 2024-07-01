n = gets.chop.to_i
s = gets.chop


ans = n-1


n.times do |i|
  pre = s[0,i]
  nex = s[i+1, n - i + 1]

  ans = [pre.count('W') + nex.count('E'), ans].min

end

puts ans
