n = gets.to_i
s = gets.chomp
 
 
a = []
a[0] = s[1..(-1)].count("E")
(1..(n-1)).each do |i|
    dif = 0
    if s[i] == "E"
        dif -= 1
    end
    
    if s[i-1] == "W"
        dif += 1
    end
    a[i] = a[i-1] + dif
end
puts a.min