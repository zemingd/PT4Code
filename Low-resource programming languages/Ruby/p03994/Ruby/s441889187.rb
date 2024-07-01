s = gets.chomp.codepoints
k = gets.to_i
z = "z".ord
s.size.times{|i|
  break if k.zero?
  t = (z - s[i]).succ
  if t <= k
    k -= t 
    s[i] = 97
  end
}
k = k % 26
s[-1] = s[-1] + k

puts s.map(&:chr).join

