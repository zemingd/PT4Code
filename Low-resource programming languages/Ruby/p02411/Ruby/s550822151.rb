while tmp = gets
  m,f,r = tmp.chomp.split.map(&:to_i)
  t = m + f
  break if t == -2 && f == -1
  if 80 <= t
    puts "A"
  elsif 65 <= t && t < 80
    puts "B"
  elsif (50 <= t && t < 65) || 50 <= r  && ( -1 < m && -1 < f )
    puts "C"
  elsif (30 <= t && t < 50) && ( -1 < m && -1 < f )
    puts "D"
  elsif
    puts "F"
  end
end
