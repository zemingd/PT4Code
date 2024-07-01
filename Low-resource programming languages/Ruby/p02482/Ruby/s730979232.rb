sign =
	case STDIN.gets.split.map(&:to_i).inject(&:<=>)
	when 1; '>'
	when 0; '=='
	else; '<'
	end

puts "a #{sign} b"