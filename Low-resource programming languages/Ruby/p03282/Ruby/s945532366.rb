s = gets.chomp
k = gets.to_i

ch = ""
idx = 10**19
s.chars.with_index{|c,i|
  if c!=?1
    ch = c
    idx = i
    break
  end
}

if k <= idx
  puts s[0]
else
  puts ch
end
