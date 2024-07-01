gets.to_i.times{
  a = gets.to_i + gets.to_i
  puts a.to_s.size > 80 ? :overflow : a
}