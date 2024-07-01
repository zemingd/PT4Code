s = gets.chomp
puts s.gsub(/(.)(\1)+/) {$1}.length < 4 ? "Bad" : "Good"