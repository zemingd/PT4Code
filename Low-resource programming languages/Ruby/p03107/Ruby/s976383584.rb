s = gets
count = 0
tmp_count = s.scan(/(10|01)/).flatten.length
while tmp_count != 0
  count += tmp_count * 2
  s.gsub!(/(10|01)/, '')
  tmp_count = s.scan(/(10|01)/).flatten.length
end
puts count