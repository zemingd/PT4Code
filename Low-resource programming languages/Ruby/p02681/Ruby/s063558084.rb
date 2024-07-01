s = gets.chomp
t = gets.chomp

if t.length == ( s.length + 1 )
  if t[0...s.length] == s
    puts("Yes")
  else
    puts("No")
  end
else
  puts("No")
end