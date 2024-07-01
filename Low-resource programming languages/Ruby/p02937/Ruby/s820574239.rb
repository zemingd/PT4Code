s = gets.chomp
t = gets.chomp

result = 0
loop_num = 0
s_index = 0
(0..t.length-1).each do |i|
  t_char = t[i]
  flag = false
  (s_index..s.length-1).each do |j|
    if t_char == s[j] then
      flag = true
      s_index = j == s.length - 1 ? 0 : j + 1
      break
    end
  end
  next if flag
  loop_num += 1
  (0..s_index-1).each do |j|
    if t_char == s[j] then
      result += (j + 1)
      flag = true
      s_index = j == s.length - 1 ? 0 : j + 1
      break
    end
  end
  next if flag
  puts -1
  exit 0
end

puts s.length * loop_num + s_index
