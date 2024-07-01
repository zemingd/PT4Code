s = gets.chomp
loop do
  if s == ""
    puts "YES"
    break
  elsif s[0, 7] == "dreamer"
    if s[7] == "a"
      s.slice!(0, 5)
    else
      s.slice!(0, 7)
    end
  elsif s[0, 6] == "eraser"
    s.slice!(0, 6)
  elsif s[0, 5] == "dream"
    s.slice!(0, 5)
  elsif s[0, 5] == "erase"
    s.slice!(0, 5)
  else
    puts "NO"
    break
  end
end