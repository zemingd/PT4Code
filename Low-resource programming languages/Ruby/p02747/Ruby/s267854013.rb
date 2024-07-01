s = gets.chomp
f = true
s.size.times{|i|
  if (i%2==0 && s[i]!="h") || (i%2==1 && s[i]!="i")
    f = false
    break
  end
}

puts (s.size%2==0 && f)? "Yes" : "No"
