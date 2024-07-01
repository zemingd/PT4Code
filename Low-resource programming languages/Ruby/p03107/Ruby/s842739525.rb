str = gets.chomp
len = str.length
count = 0
loop_count = 0
loop do
  str.slice!(/(10|01)|(1100|0011)(111000|000111)|(11110000|00001111)|(1111100000|0000011111)/)
  puts str
  tmp_len = str.length
  if len == tmp_len
    break
  end
  count+=len-tmp_len
  len = str.length
  loop_count+=1
end
puts loop_count
puts count
