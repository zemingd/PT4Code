s = gets.chomp
k = gets.to_i

z = "z".ord

skip = k / 26
skip.times do |i|
    t = (z - s[i].ord).succ
    k -= t 
end
s[(0...skip)] = "a"*skip


s.size.times{|i|
  break if k.zero?
  next if i <= skip.pred
  if s[i] != "a"
    t = (z - s[i].ord).succ
    if t <= k
      k -= t 
      s[i] = "a"
    end
  end
}
k = k % 26
s[-1] = (s[-1].ord + k).chr
k = 0

puts s





