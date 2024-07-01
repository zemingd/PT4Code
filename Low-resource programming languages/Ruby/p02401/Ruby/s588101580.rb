loop do
        c = gets.chomp.split
case c[1]
when '+'
        puts c[0].to_i + c[2].to_i
when '-'
        puts c[0].to_i - c[2].to_i
when "*"
        puts c[0].to_i * c[2].to_i
when "/"
        puts c[0].to_i / c[2].to_i
else
        break
end
end