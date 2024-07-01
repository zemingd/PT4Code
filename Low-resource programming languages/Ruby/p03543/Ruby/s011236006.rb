n=gets.chomp.split("")
puts ('0'..'9').any?{|c|n.count(c)>2}?:Yes: :No