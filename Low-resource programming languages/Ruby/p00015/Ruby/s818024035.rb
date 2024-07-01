n = gets.to_i
n.times{
  a = gets.to_i
  b = gets.to_i
  s = "#{a + b}"
  if s.size > 80
    puts "overflow"
  else
    puts s
  end
}