s = []
gets.chomp.chars{ |c|
  if c == "B"
    s.pop
  else
    s << c
  end
}
puts s.join
