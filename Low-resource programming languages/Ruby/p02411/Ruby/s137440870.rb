lines = STDIN.read.split("\n")
lines.each do |line|
  m, f, r = line.split(" ").map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  n = m + f
  if m == -1 || f == -1
    puts "F"
  elsif 80 <= n
    puts "A"
  elsif 65 <= n
    puts "B"
  elsif 50 <= n
    puts "C"
  elsif 30 <= n
    if 50 <= r
      puts "C"
    else
      puts "D"
    end
  else
    puts "F"
  end
end