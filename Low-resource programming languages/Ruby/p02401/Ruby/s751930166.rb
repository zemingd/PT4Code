loop do
    a, op, b = gets.chomp.split
    a = a.to_i
    b = b.to_i
        case op
        when "?"
            break
        when "+"
            puts "#{a + b}"
        when "-"
            puts "#{a - b}"
        when "*"
            puts "#{a * b}"
        when "/"
            puts "#{a / b}"
        end
end