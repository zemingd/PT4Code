S = gets.chomp.chars.sort
T = gets.chomp.chars.sort.reverse

ans = 'Yes'
(0...S.size).each{|i|
  (ans = 'No'; break) if i >= T.size
  (ans = 'No'; break) if S[i] > T[i]
  break if S[i] < T[i]
}
ans = 'No' if ans == 'Yes' && S.size == T.size

puts ans
