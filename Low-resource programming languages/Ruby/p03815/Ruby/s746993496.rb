x = gets.to_i

a, b = x.divmod(5 + 6)
puts 2*a + (case b; when 0 .. 5; 1; when 6 .. 10; 2;end)