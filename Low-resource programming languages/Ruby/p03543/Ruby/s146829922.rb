N = gets.chomp
puts N.match(/(.)\1\1/).nil? ? "No" : "Yes"