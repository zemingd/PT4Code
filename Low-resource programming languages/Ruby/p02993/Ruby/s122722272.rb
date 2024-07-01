input = gets
tes = ""
input.chars.each{ |x|
  return puts "Bad" if x == tes
  tes = x
}
puts "Good"