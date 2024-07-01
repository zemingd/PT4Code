x = gets.chomp.to_i
result = 0
x.times {
    |i|
    num = i**2
    result = i**2 if( num<=x )
    if( num>x )
        break
    end
}
puts result