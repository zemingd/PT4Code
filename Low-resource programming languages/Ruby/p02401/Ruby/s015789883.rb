
    x, y, z = gets.split(" ")
    x = x.to_i
    z = z.to_i
    
break if x == z == 0
    case y
    when "+" then
        a = x + z
    when "-" then
        a = x - z
    when "*" then
        a = x * z
    when "/" then
        a = x / z
    end
    
    puts a