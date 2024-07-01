ss = gets.chars
tt = gets.chars

cnt = 0
0.upto(2) do |i|
  cnt+=1 if ss[i]==tt[i]
end
puts cnt
