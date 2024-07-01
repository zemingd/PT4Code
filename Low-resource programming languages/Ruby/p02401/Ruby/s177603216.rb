loop do
    s = gets
    a, op, b = s.split
    if op == '?' then
        break
    end
    puts "#{eval(s)}"
end
