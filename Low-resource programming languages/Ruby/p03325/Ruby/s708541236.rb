N = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
a.each{|v|
    while v % 2 == 0 do
        ans += 1
        v /= 2
    end
}
puts ans