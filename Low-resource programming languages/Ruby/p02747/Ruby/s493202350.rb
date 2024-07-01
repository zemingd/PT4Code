s = gets.chomp
s.gsub!(/hi/, "")
puts (s.length == 0) ? "Yes" : "No"
