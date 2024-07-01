gets
puts gets.chomp.split(/ /).map(&:to_i).select{|a| a % 2 == 0 && a % 3 != 0 && a % 5 != 0}.length > 0 ? 'DENIED' : 'APPROVED'