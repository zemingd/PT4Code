s = gets.chomp.split("").sort
t = gets.chomp.split("").sort.reverse
slen = s.length
tlen = t.length
i = 0
ispossible = false
while i < slen && i < tlen
  if s[i] < t[i]
    ispossible = true
    break
  elsif s[i] == t[i]
    i += 1
  else
    break
  end
end
if ispossible
  puts "Yes"
else
  if (i == slen || i == tlen) && slen < tlen
  puts "Yes"
  else
  puts "No"
  end
end