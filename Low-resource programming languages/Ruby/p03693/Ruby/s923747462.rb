R, G, B = gets.split.map(&:to_i)
is_ok = (R * 100 + G * 10 + B) % 4 == 0
puts(is_ok ? 'YES' : 'NO')
