x = gets.chomp.to_i
result = 0
x.times {
    |i|
    num = (i-1)**2
    result = num if( num<=x )
    if( num>x )
        break
    end
}
puts result