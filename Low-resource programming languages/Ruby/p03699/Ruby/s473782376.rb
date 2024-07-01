count = 0
arr = []
n = gets.chomp.to_i
n.times do |i|
    s = gets.chomp.to_i
    count += s
    arr << s
end
i = 0
arr = arr.sort
ans = 0
tmp = 0
i = 0
if count % 10 != 0
    puts count
else
    while true
        tmp = count
        ans = tmp - arr.shift
        if ans % 10 != 0
            puts ans
            break
        elsif i == n - 1
            puts "0"
            break
        end
        i += 1
    end
end