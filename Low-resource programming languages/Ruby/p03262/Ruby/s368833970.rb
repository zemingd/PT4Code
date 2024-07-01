n, a = gets.chomp.split(" ").map(&:to_i)

x = gets.chomp.split(" ").map(&:to_i)
ki = (x.pop - a).abs
ans  = 0
if x != []
x.each do |i|
    i = (i - a).abs 
    #p i
    ans = ki.gcd(i)
    ki = ans
end
puts ans
elsif x == []
    puts ki
end

