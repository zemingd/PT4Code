s = gets.chomp
out = []
s.each_char{|c|
  if c == 'B'
    out.pop
  else
    out << c
  end
}
puts out.join
