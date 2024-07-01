x = gets.to_i

a, b = x.divmod(5 + 6)
puts 2*a + (case b; when 0; 0; when 1 .. 6; 1; when 7 .. 10; 2;end)