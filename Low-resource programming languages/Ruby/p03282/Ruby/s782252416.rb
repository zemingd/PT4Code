s = gets.chomp
k = gets.to_i

c = s.each_char.find{|c| c != "1"}
if c.nil?
    puts 1
else
    if (index = s.index(c)) < k
        puts c
    else
        puts 1
    end
end