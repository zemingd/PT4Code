S = gets.chomp

n = S.size
ans = 'Yes'
(0...n/2).each{|i|
  (ans = 'No'; break) if S[i] != S[n-i-1]
}
(0...n/4).each{|i|
  (ans = 'No'; break) if S[i] != S[(n-1)/2-i-1]
}

puts ans
