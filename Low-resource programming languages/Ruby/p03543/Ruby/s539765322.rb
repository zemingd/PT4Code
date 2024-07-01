s = gets.chomp
puts [s[0..2], s[1..3]].map {|ss| ss.chars.uniq.size == 1}.any? ? 'Yes' : 'No'