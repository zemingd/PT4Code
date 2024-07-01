n, x = gets.chop.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)
child = 0
a.sort!
i = 0
while a.length > 0 do
    x -= a[0] if a[0] != nil
    a.shift
    #p "x:#{x}, a:#{a}"
    break if x < 0
    i += 1 if a.length >= 1
    i += 1 if a.length == 0 && x == 0
end
puts i