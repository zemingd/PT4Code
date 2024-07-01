MAX = 200010
n = gets.chomp.to_i
x = gets.chomp.split("").map(&:to_i)
count_x_1 = x.count(1)
memo = [0, 1]
(2..MAX).each do |i|
    c = i.to_s(2).count("1")
    memo << memo[i%c] + 1
end

n.times do |i|
    c1 = 0
    tmp = x.dup
    if x[i] == 1
        tmp[i] = 0
        c1 = count_x_1-1
    else
        tmp[i] = 1
        c1 = count_x_1+1
    end
    puts memo[tmp.join("").to_i(2) % c1]+1
end