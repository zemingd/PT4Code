s = gets.chomp
k = gets.to_i

s.size.times{|i|
  if s[i] != "a"
    
  t = ("z".ord - s[i].ord).succ
  if t <= k
    k -= t 
    s[i] = "a"
  end
  end
}
k = k % 26
while k != 0
  t = ("z".ord - s[-1].ord).succ
  if t <= k
    k -= t 
    s[-1] = "a"
  else
    s[-1] = (s[-1].ord + k).chr
    k = 0
  end
  
end

puts s



