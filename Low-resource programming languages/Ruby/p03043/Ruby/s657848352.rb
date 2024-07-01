def calRate(n,num)
    (1/n.to_f) * (0.5)**num
end
rate = 0
N,K = gets.split.map(&:to_i)
[*1..N].each do |n|
    point = n
    num = 0
    loop do
        break if K <= point
        num += 1
        point *= 2
    end
    rate += calRate(N,num)
end
puts rate