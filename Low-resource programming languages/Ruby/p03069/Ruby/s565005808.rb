n = gets.to_i
s = gets.chomp.split("")
cnt = 0
cnt2 = 0

loop do
  b = 0
  n.times do |x|
    if ((s[x]=="#") and (s[x+1]=="."))
      cnt += 1 
      s[x+1]="#"
      b = 1
    end
  end
  break if b == 0
end
 
loop do
  b = 0
  n.times do |x|
    if ((s[x]=="#") and (s[x+1]=="."))
      cnt2 += 1 
      s[x]="."
      b = 1
    end
  end
  break if b == 0
end

if cnt2==0
  p cnt
elsif cnt>cnt2
  p cnt2
end