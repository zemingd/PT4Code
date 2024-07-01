l = gets.downcase
puts ('a' .. 'z').to_a.map{ |c| "#{c} : #{l.count(c)}"}