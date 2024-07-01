s = gets.strip.chars
e = ""
for i in 0..s.size-1
  if s[i] == "1"
    e += "1"
  elsif s[i] == "0"
    e += "0"
  else
    if e.size > 1
      e = e[0..e.size-2]
    elsif e.size == 1
      e = ""
    end
  end
end
puts e