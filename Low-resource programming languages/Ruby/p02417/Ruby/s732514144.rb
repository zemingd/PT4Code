str = gets.chomp.downcase
puts ('a'..'z').to_a.map{ |c| "#{c} : #{str.count(c)}" }