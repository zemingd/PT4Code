a=$<.map{|e|e.chomp.chars}
puts a==a.transpose.reverse ? :YES : :NO