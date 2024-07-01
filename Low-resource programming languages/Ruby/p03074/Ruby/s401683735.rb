n, k = gets.chomp!.split(" ").map!(&:to_i)
s = gets.chomp!

x = s.chars.chunk {|ch| ch == "1" }.map {|k, v| [k, v.count] }
x.unshift([false, 0])
x.push([false,0])

num = 0
max = 0

memo = []

loop do
    co = x[num][0] ? k * 2 + 1 : k * 2
    if num + co > x.length
        break
    end

    if memo[num]
        sum = memo[num] + x[num + co - 2][1] + x[num + co - 1][1]
        memo[sum + 2] = sum - x[num][1] - x[num + 1][1]        
    else
        sum = x[num, co].inject(0) {|sum, z| sum + z[1] }
        memo[sum + 2] = sum - x[num][1] - x[num + 1][1]
    end
    max = [max, sum].max
    num += 1
end

puts max
