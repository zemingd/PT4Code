n = gets.to_i
a = gets.split(' ').map(&:to_i)
s = 1
ma = 10 ** 18
a.each { |e|
    if (e == 0) then
        puts "0"
        return
    end
    if (e > ma) then
        puts "-1"
        return
    end
    s *= e
}
if (s > ma) then
    puts "-1"
    return
end
puts s