s = gets().chomp

cnt = 0
list = s.split('')
list.each_with_index do |c, i|
  if c == 'c' && i >= 2
    cnt += 1 if s[i - 1] == 'b' && s[i - 2] == 'a'
  end
end

puts cnt