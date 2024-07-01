s=gets.chomp.split("")
str = []
s.each do |c| 
    if c == 'B' 
        str.pop
    else
        str.push(c)
    end
end
puts str.join