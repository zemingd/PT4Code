s = gets.chomp
c = []
s.each_char { |x|
  if x == '1' || x == "0"
    c << x
  elsif x == 'B'
    c.pop
  end
}
puts c.join("")
