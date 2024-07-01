    x, y, z = gets.split(" ")
    x = x.to_i
    z = z.to_i
    
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