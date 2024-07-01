while true do
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
    
    break if x == z == 0
    puts a
end