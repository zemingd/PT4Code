a, b, c = *(gets.strip.split(/ +/).map(&:to_i))
 
puts(a < b < c ? 'Yes' : 'No')