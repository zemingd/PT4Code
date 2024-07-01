input = gets.chomp.split
n = input[0].to_i
m = input[1].to_i

l_max = -1
r_min = -1

for i in 1..m do
    input = gets.chomp.split
    l = input[0].to_i
    r = input[1].to_i
    if (l_max < 0 or l_max < l)
        l_max = l
    end
    if (r_min < 0 or r_min > r)
        r_min = r
    end
end

num = r_min - l_max +1

if num < 0
    puts "0"
else 
    puts num
end