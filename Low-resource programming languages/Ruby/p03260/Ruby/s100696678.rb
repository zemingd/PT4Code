a,b = gets.chomp.split.map(&:to_i)
puts a.odd? && b.odd? ? "Yes" : "No"
