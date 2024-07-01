
loop do
    a = gets.chomp
    
    if a.eql?("0") then
        break
    end
    
    c = 0
    a.each_char do |i|
        c += i.to_i
    end
    print c, "\n"
end

