a=$<.map{|e|e.chomp.chars}
puts a==a.reverse.transpose ? :YES : :NO