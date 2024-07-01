N, K = gets.split.map(&:to_i)

ans = 0

(1..N).each do |i|
    point = 0
    idx = 0

    loop do
        point = i * (2 ** idx)

        break if point >= K

        idx += 1
    end

    ans += (1 / N.to_f) * (0.5 ** idx)
end

puts ans