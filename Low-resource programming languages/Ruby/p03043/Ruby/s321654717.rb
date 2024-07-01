N,K = gets.split.map(&:to_i)

ans = 0.0

(1..N).each do |i|
    cnt = 0
    while i < K do
        i *= 2
        cnt += 1
    end
    ans += 1.0 / 2.pow(cnt)
end

ans /= N
puts(ans)