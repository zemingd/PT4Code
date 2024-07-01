
a, b = gets.strip.split.map(&:to_i)


result = 'No'


(1..3).each{ |c| 
    
    cal = a * b * c
    
    if ( cal.modulo(2) == 1 ) 
        result = 'Yes'
    end
}

puts result