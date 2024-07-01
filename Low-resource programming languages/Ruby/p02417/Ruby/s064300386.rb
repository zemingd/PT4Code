arr = Array.new(26, 0)
ch = Array.new(26, ('a'..'z').to_a)

while true
s = gets
break if s == nil
length = s.chomp.length

for i in 1..length
al = s[i-1].downcase.ord - "a".ord
next if i < 0 || i > 25
arr[al] += 1
end
end

for i in 0..25
 puts ch[i] + " : " + arr[i].to_s

end

