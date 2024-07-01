s, t = $<.map {|s| s.chomp.chars}
puts s.sort.join < t.sort.reverse.join ? 'Yes' : 'No'
