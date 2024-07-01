while line = gets.chomp
    x,o,y=line.split(' ')
    case o
    when "?"
        break
    when "+"
        puts "#{x.to_i + y.to_i}"
    when "-"
        puts "#{x.to_i - y.to_i}"
    when "*"
        puts "#{x.to_i * y.to_i}"
    when "/"
        puts "#{x.to_i / y.to_i}"
    end
end