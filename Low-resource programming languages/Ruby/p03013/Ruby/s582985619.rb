N,M,*as=$<.read.split.map(&:to_i)
mod=10**9+7
fib = Array.new(N,1)
2.upto(N) do |i|
    fib[i] = fib[i-2]+fib[i-1]
end
prev = 0
ret = 1
as << N+1
as.each do |a|
    if prev == a
        puts 0
        exit
    end
    ret = ret * fib[a-prev-1] % mod
    prev = a+1
end
puts ret
