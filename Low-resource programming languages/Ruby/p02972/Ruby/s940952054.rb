N = gets.to_i
as = gets.split.map(&:to_i)
bs = Array.new(N,0)
bs[N-1] = as[N-1]
(N-1).downto(1){|i|
    index = i - 1
    now_index = 2 * index
    sum = 0
    while now_index < N
       sum += bs[now_index]
       now_index += i
    end
    bs[index] = (as[index] + (sum % 2)) % 2
}

m = bs.count(1)
if m == 0
    puts 0
else
    puts m
    bs.each.with_index(1){|k,index|
        puts index if k == 1
    }
end