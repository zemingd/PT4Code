S=gets.chomp.split("")
T=gets.chomp.split("")
cnt=0
3.times do |i|
  if S[i] == T[i]
    cnt += 1
  end
end
p cnt