loop do
  d = gets.split.map(&:to_i)
  break if d[0]+d[1]+d[2] == -3
  if d[0] == -1 || d[1] == -1
    puts "F"
  elsif d[0]+d[1]>=80
    puts "A"
  elsif d[0]+d[1]>=65
    puts "B"
  elsif d[0]+d[1]>=50
    puts "C"
  elsif d[2] >=50
    puts "C"
  elsif d[0] +d[1]>=30
    puts"D"
  else
    puts "F"
  end
end

