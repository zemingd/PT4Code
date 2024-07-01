w = []
gets.chomp.chars.each {|c| c=='B' ? w.pop : w<<c}
puts w.join