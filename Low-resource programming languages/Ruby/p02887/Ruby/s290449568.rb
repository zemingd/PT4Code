N=gets.to_i
S=gets.chomp.split("")
cnt=0
now=S[0]
(1..N-1).each do |i|
  if now == S[i]
    next
  else
    cnt += 1
    now=S[i]
  end
end
puts cnt+1