def expired(x, a, b)
  if b <= a
    puts "delicious"
  elsif b <= a + x 
    puts "safe"
  else
    puts "dangerous"
  end
end

x, a, b = gets.chomp.split(" ").map(&:to_i)
expired(x, a, b)