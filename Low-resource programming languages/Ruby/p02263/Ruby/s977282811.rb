a = []
gets.split.each do |s|
    if s =~ /\d+/
        a << s.to_i
    else
        y, x = a.pop, a.pop
        a.push x.send s, y
    end
end
puts a[0]
