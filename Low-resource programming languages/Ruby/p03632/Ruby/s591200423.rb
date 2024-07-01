a,b,c,d = gets.chomp.split(" ").map(&:to_i)
diff = (b-c)
if diff > 0
  if (d-b) < 0
    diff += (d-b)
  end
  puts diff
  exit
end
puts 0