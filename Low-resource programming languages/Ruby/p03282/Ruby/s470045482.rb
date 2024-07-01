s = gets.chomp
k = gets.to_i
ichi = -1
num = -1
len = s.length
i = 0
while i < len
  if s[i] == "1"
    ichi = i
  else
    num = s[i].to_i
    break
  end
  i += 1
end
if k-1 <= ichi
  puts "1"
else
  puts num
end
