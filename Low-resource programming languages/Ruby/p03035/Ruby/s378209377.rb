A, B = gets.strip.split(' ').map(&:to_i)
result = B
result /= 2 if A >= 6 && A <= 12
result = 0 if A < 6
puts result