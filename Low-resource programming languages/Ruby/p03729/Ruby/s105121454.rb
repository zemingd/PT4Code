w = gets.split
l = w[0][-1]
ret = true
w.each{|s|
if ret
ret = l == s[0]
l = s[-1]
end
}

puts ret ? 'YES' : 'NO'