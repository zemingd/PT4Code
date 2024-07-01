n = gets.chomp.split("")
screenString = ""
n.each do |value|
	case value
      when "B"
      	screenString.slice!(screenString.length - 1) if screenString != ""
      else
      	screenString += value
    end
end
puts screenString