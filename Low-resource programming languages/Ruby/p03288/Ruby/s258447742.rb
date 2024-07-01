s = gets.chomp
puts s[0] == "A" &&  s[2..-2].count("C") == 1 && s.delete("A-Z").size == s.size-2 ? :AC : :WA