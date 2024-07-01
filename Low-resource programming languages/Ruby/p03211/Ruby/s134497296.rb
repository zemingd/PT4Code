S = gets.chomp

ans = 999
(S.size-2).times do |i|
  d = ( S[i,3].to_i - 753 ).abs
  ans = d if ans > d
end
 
p ans