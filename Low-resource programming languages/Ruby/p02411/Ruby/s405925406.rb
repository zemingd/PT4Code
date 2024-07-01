while  (m, f, r = gets.split.map(&:to_i)) != [-1,-1,-1]
a = m + f

  if m == -1 || f == -1
    puts "F"
  elsif a >= 80
    puts "A"
  elsif  a >= 65 && a < 80
    puts "B"
  elsif a >= 50 && a < 65
    puts "C"
  elsif  a < 30
    puts "F"

  elsif a >= 30 && a < 50
    puts "D" if r < 50
    puts "C" if r >= 50
  end
end