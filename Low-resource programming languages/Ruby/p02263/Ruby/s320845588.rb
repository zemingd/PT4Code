s = gets.chomp.split(" ")
while(s.size > 1)
  i = 0
  while(true)
  if (s[i+2] == "+")
    s[i+2] = s[i].to_i + s[i+1].to_i
    s.delete_at(i)
    s.delete_at(i)
    break
  end
  if (s[i+2] == "*")
    s[i+2] = s[i].to_i * s[i+1].to_i
    s.delete_at(i)
    s.delete_at(i)
    break
  end
  if (s[i+2] == "-")
    s[i+2] = s[i].to_i - s[i+1].to_i
    s.delete_at(i)
    s.delete_at(i)
    break
  end
  i+=1
  end
end
puts s