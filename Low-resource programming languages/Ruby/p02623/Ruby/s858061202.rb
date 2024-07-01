N,M,K=gets.split.map(&:to_i)

as = gets.split.map(&:to_i)
as << 10**10
bs = gets.split.map(&:to_i)
bs << 10**10

k = K
count = 0
loop do
    if as[0] < bs[0] && as[0] <= k
        k -= as.shift
        count += 1
    elsif bs[0] <= as[0] && bs[0] <= k
        k -= bs.shift
        count += 1
    else
        break
    end
end

puts count