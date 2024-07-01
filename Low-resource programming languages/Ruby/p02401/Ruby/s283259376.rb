lines = readlines.map(&:chomp).map{ |line| line.split(' ') }
lines.each do |a,op,b|
    a = a.to_i
    b = b.to_i
    if op == "+" then
        puts a+b
    elsif op == "-" then
        puts a-b
    elsif op == "*" then
        puts a*b
    elsif op == "/" then
        puts a/b
    elsif op == "?" then
        break
    end
end
