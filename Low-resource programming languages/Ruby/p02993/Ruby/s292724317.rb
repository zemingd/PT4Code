answer = "Good"
S.to_s.chars.each_with_index do |num, i|
  next if i == 0 || num != S.to_s.chars[i-1]
  
  answer = "Bad"
  break
 end

p answer