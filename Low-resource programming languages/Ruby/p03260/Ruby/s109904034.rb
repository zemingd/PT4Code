
a, b = gets.strip.split.map(&:to_i)

puts "a: #{a}"
puts "b: #{b}"

result = 'No'

puts result

(1..3).each{ |c| 
    
    cal = a * b * c
    
    if ( cal.modulo(2) == 1 ) 
        result = 'Yes'
    end
}

result