input = gets.chomp!
input = input.to_i
if( input % 2 == 0 )
    p input
else 
    p 2 * input
end