# s = gets.chomp.codepoints
s = gets.chomp.split(//).map{|x| x.ord}
k = gets.to_i
a = "a".ord
z = "z".ord
s.size.times{|i|
  break if k.zero?
  if s[i] != a
    t = (z - s[i]).succ
    if t <= k
      k -= t 
      s[i] = 97
    end
  end
}
k = k % 26
s[-1] = s[-1] + k

puts s.map(&:chr).join

