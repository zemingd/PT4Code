a, b = gets.split.map(&:to_i)
s = gets.chomp
puts s =~ /^[0-9]+-[0-9]+/ ? "Yes" : "No"