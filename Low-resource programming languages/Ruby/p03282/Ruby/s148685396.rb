s = gets.chomp
k = gets.to_i

ch = s[0]
s.chars{|c|
  if c!=?1
    ch = c
    break
  end
}

if k == 1
  puts s[0]
else
  puts ch
end
