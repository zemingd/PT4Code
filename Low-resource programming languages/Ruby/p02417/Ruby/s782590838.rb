str = gets.chomp.upcase
('A'.ord..'Z'.ord).each { |c|
    puts "#{c.chr} : #{str.count(c.chr)}"
}