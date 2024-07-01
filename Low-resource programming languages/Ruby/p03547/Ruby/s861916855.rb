a, b = gets.chomp.split.map(&:to_i)

ans = if a < b
	   "<"
	  elsif a == b
       "="
	  else
		">"
      end

puts ans