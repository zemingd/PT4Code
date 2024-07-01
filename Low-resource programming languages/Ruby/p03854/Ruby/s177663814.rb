s = gets.chomp
key = 0
while s.size > 0
  if s[0, 6] == "eraser"
    if s.size == 6
      key = 1
      break
    end
    s.slice!(0, 6)
  elsif s[0, 5] == "erase"
    if s.size == 5
      key = 1
      break
    end
    s.slice!(0, 5)
  elsif s[0, 7] == "dreamer"
    if s[0, 10] == "dreamerase"
      s.slice!(0, 5)
    elsif s[0, 12] == "dreamerdream" || s[0, 12] = "dreamererase"
      s.slice!(0, 7)
    elsif s.size == 7
      key = 1
      break
    else
      break
    end
  elsif s[0, 5] == "dream"
    if s.size == 5
      key = 1
      break
    end
    s.slice(0, 5)
  else
    break
  end
end

puts key == 1 ? "Yes" : "No"