str = gets.chomp

prev_s = ''
ans = 0
str.each_char.with_index do |s, i|
  if prev_s != ''
    if prev_s == s
      if s == '0'
        prev_s = '1'
      else
        prev_s = '0'
      end
      ans += 1
    else
      prev_s = s
    end
  else
    prev_s = s
  end
end
puts ans
