n = gets.to_i
LIST = [*'A'..'Z']
puts gets.chomp.split('').map {|s| LIST[(n + LIST.index(s)) % 26] }.join