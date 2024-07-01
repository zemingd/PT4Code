price = 700
gets.chars.each{|c|
  price += 100 if c == 'o'
}
puts price
