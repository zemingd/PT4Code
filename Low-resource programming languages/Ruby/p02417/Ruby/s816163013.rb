str = gets.chomp.upcase
('A'.ord..'Z'.ord).each { |c|
    puts "#{c.chr.downcase} : #{str.count(c.chr)}"
}