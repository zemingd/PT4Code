a,b,c = readline.chomp.split.map(&:to_i)
puts a < c && (a + b) > c ? "Yes" : "No"