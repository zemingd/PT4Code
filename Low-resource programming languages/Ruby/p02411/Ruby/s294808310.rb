while (m, f, r = gets.split(" ").map(&:to_i)) != [-1, -1, -1] do
  tmp = m + f
  if m == -1 or f == -1
    puts "F"
  elsif tmp >= 80
    puts "A"
  elsif tmp >= 65
    puts "B"
  elsif tmp >= 50
    puts "C"
  elsif tmp >= 30
    if r >= 50
      puts "C"
    elsif
      puts "D"
    end
  elsif
    puts "F"
  end
end