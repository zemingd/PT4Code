w = gets.upcase.chomp

count = 0
while true
    t = gets.upcase.chomp
    break if t =~ /END_OF_TEXT/
    t = t.split(" ")
    t.each do |str|
        if str == w
            count += 1
        end
    end
end
    
puts count