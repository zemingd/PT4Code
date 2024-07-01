while str = gets
  if str == nil 
    break
  end
  (str1, str2) = str.split(" ")
  num = str1.to_i + str2.to_i
  puts(num.to_s.size)
end