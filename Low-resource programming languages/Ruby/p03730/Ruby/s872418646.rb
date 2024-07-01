A, B, C = gets.split.map{|i|i.to_i}
f = false
(1 .. B).each{|i|
    x = A * i
    if x % B == C
        f = true
        break
    end
}
puts f ? "YES" : "NO"
