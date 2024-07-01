s = gets.chomp.chars
t = gets.chomp
flag = false
s.size.times do 
  s.unshift(s.pop)
  if s.join == t
    flag = true
    break;
  end
end
puts flag ? "Yes" : "No"