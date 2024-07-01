a,b,c = gets.split.map{|n|n.to_i}
n = 0
str = "NO"
(1...10000).each do |i|
    n = b * i + c
    if n % a == 0
        str == "YES"
        break
    end
end
puts str