ss = gets.chomp

cnt1=0
cnt2=0
l = ss.length
# 1はじまり
ex1 = "10" * (l/2) + "1" * (l%2)
# 0はじまり
ex2 = "01" * (l/2) + "0" * (l%2)

l.times do |i|
  cnt1+=1 unless ss[i] == ex1[i]
  cnt2+=1 unless ss[i] == ex2[i]
end

puts cnt1<cnt2 ? cnt1 : cnt2