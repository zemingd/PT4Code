s = gets.chomp
k = gets.to_i

z = "z".ord
s.size.times{|i|
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



