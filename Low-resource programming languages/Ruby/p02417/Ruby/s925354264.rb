str = ""
while true
    d = gets
    break if d == nil
    str += d.chomp.upcase
end

('A'.ord..'Z'.ord).each { |c|
    puts "#{c.chr.downcase} : #{str.count(c.chr)}"
}