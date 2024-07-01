a = gets.strip.chars.map{|x| x}
a.sort!
char = a.inject{|x,y| x+y}
puts case char
        when 'abc' then 'Yes'
        else 'No'
     end

