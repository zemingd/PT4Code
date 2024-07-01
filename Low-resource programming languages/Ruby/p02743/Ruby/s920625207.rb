a,b,c = gets.split.map(&:to_i)
puts a**0.5+b**0.5<c**0.5 ? "Yes" : "No"