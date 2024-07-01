S = gets.chomp

ans = 999
(S.size-2).times do |i|
  diff = ( S[i,3].to_i - 753 ).abs
  ans = [diff, ans].min
end

p ans