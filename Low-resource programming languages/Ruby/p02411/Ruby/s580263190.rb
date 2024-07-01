loop do
  m, f, r = gets.split(" ").map(&:to_i)
    exit if m == -1 and f == -1 and r == -1

  puts "F" if (m == -1 or f == -1 ) or (m + f < 30)
  puts "A" if 80 <= m + f
  puts "B" if 65 <= m + f and m + f < 80
  puts "C" if 50 <= m + f and m + f < 65
  if 30 <= m + f and m + f < 50
    puts r <= 50 ? "C" : "D"
  end
end