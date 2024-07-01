loop do
  m, f, r = gets.split(" ").map(&:to_i)
    exit if m == -1 and f == -1 and r == -1

  if (m == -1 or f == -1) or (m + f < 30)
    puts "F"
  elsif 80 <= m + f
    puts "A"
  elsif 65 <= m + f and m + f < 80
    puts "B"
  elsif 50 <= m + f and m + f < 65
    puts "C"
  elsif 30 <= m + f and m + f < 50
    puts 50 <= r ? "C" : "D"
  else
    exit 1
  end
end