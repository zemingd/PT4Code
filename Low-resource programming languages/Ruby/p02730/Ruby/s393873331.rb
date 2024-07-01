s = gets.rstrip

def iskaibun(s)
  if s == s.reverse
    return true
  else
    return false
  end
end

len = s.size - 1

if iskaibun(s) \
    and iskaibun(s[0..(len-1).div(2)]) \
    and iskaibun(s[(len+3).div(2)..len])
  puts "Yes"
else
  puts "No"
end