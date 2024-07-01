N = gets.to_i
d = gets.split.map(&:to_i)
sum = 0
(1..N).each do |n|
    (N-n).times do |m|
        sum += d[n-1] * d[n+m]
    end
end
puts sum