input = $stdin.readlines

a = input[0].to_i
b = input[1].to_i

result = 'No'

range = 1..3

range.each{ |c| 
    
    cal = a * b * c
    
    if ( cal.modulo(2) == 1 ) 
        result = 'Yes'
    end
}

result