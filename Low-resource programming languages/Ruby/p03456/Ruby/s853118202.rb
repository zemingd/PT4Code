a = gets.split.map(&:to_s)
s = ( a[0]+a[1] ).to_i
result = "No"
s.times{
    |i|
    result = "Yes" if( i**2 == s )
}
puts result