s = gets.chomp.each_char.map {|x| x == '0' ? 0 : 1}

# 0101...
diff1 = 0
s.each_with_index do |x, i|
  if (i % 2 == 0) != (x == 0)
    diff1 += 1
  end
end

# 1010...
diff2 = 0
s.each_with_index do |x, i|
  if (i % 2 == 0) != (x == 1)
    diff2 += 1
  end
end

puts [diff1, diff2].min
