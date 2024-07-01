k = gets.to_i
a, b = gets.split.map(&:to_i)

ret = false
(a..b).each do |i|
    if( i % k == 0 ) then
        ret = true
    end
end
    
puts ret ? 'OK' : 'NG'