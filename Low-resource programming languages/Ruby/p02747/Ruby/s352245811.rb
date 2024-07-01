s = gets.split("").map(&:chomp)
s.delete("")
t = true
while t
  if s[0] == "h" && s[1] == "i"
    s.delete_at(0)
    s.delete_at(0)
  else
    t = false
  end
end
if s.size != 0
  puts "No"
else
  puts "Yes"
end