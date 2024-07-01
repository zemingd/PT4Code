arr = []
gets.chomp.split('').each do |c|
    if c == 'B'
        arr.pop
    else
        arr.push(c)
    end
end
puts arr.join