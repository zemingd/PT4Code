loop do
  m, f, r = gets.split.map(&:to_i)
  sum = m + f
  case
  when m < 0 || f < 0
    exit if r < 0
    puts "F"
  when sum >= 80
    puts "A"
  when sum >= 65
    puts "B"
  when sum >= 50
    puts "C"
  when sum >= 30
    puts ( r < 50 )? "D": "C"
  else
    puts "F"
  end
end