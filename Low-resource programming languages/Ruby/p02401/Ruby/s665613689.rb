while line = gets do
    a,op,b = line.split
    a = a.to_i
    b = b.to_i
    case op
    when "+" then
        puts a+b
    when "-" then
        puts a-b
    when "*" then
        puts a*b
    when "/" then
        puts a/b
    when "?" then
        break
    end
end
