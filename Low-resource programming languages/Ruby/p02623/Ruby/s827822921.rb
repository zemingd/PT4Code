require "pp"

n, m, k = gets.split(" ").map(&:to_i)
a_i = gets.split(" ").map(&:to_i)
b_i = gets.split(" ").map(&:to_i)

time = 0
res = []
while time <= k do
    if a_i[0] <= b_i[0] then
        time += a_i[0]
        res << a_i[0]
        a_i = a_i[1..-1]
    else
        time += b_i[0]
        res << b_i[0]
        b_i = b_i[1..-1]
    end
end

if time <= k then 
    puts res.length
else
    puts res.length - 1
end