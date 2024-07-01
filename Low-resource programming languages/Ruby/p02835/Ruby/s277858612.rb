A, B, C = gets.strip.split(' ').map(&:to_i)
result = 'win'
result = 'bust' if A + B + C > 21
puts result