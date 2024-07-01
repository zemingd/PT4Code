n = gets.chomp.to_i
puts(gets.chomp.split(/ /).collect(&:to_i).inject(0, :+) - n)