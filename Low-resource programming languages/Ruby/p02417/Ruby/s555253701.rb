arr = Array.new(26, 0)
ch = [*('a'..'z')]

while true
s = gets
break if s == nil
len = s.chomp.length

for i in 1..len
al = s[i-1].downcase.ord - 96
next if al < 0 || al > 25
arr[al] += 1
end
end

for i in 0..25
 puts ch[i] + " : " + arr[i].to_s

end

