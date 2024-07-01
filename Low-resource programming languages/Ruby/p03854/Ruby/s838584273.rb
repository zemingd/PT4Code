str = gets
str.chomp!
str.reverse!
a = 0
while a < str.size
  result = true
  s = 0
  if a+5 <= str.size
  if str[a,5] == "maerd"||str[a,5] == "esare"
    result = nil
    s = 5
  end
  end
  if a+6 <= str.size
    if str[a,6] == "resare"
      result = nil
      s = 6
    end
  end
  if a+7 <= str.size
    if str[a,7] == "remaerd"
      result = nil
      s = 7
    end
  end
  a += s
  if result
    puts "NO"
    exit
  end
end
puts"YES"