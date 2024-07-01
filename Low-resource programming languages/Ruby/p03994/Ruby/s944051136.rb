# s = gets.chomp.codepoints
s = gets.chomp
k = gets.to_i
a = "a".ord
z = "z".ord
s.size.times{|i|
  break if k.zero?
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

puts s

