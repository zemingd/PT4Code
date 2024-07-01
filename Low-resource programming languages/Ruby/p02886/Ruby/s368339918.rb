N = gets.to_i
D = gets.split.map(&:to_i)

ans = 0

N.times do |i|
    (i+1..N-1).each do |j|
        ans += D[i] * D[j] if i != j
    end
end

puts ans
