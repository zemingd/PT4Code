x = gets.to_i
a = [1]
(2..x).each{|i|
    j = 2
    while (i**j <= x)
        a << i**j
        j+=1
    end
}
a.sort!
a.reverse!
puts a[0]
