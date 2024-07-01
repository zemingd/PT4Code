def poor(a, b, c)
  if a == b && b == c && c == a
    puts "No"
  elsif a == b || b == c || c == a
    puts "Yes"
  else
    puts "No"
  end
end

a, b, c = gets.chomp.split(" ").map(&:to_i)
poor(a, b, c)