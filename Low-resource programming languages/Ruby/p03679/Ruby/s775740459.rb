def kaijo(i, num) 
  if i == 1 then num end
  kaijo(i - 1, num * i)
end 

p = 0
N, M = gets.chomp.split.map &:to_i
if N == M
  p = kaijo(N, 1) * kaijo(M, 1) * 2 %  (10 ** 9 + 7) 
elsif (N - M).abs == 1
  p = kaijo(N, 1) * kaijo(M, 1) %  (10 ** 9 + 7) 
else
  p = 0
end

print p
