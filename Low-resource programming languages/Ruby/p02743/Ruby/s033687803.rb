a, b, c=gets.chomp.split.map(&:to_i)
puts Math.sqrt(a*b)+a+b<c ? "Yes" : "No"