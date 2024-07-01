arr = Array.new(26, 0)
ch = ('a'..'z').to_a

s = gets
while true
break if s == nil
length = s.chomp.length

for i in 1..length
al = s[i].downcase.ord - 97
if al < 0 || al > 25
arr[al] += 1
end
end

for i in 0..25
 puts ch[i] + " : " + arr[i]
end

