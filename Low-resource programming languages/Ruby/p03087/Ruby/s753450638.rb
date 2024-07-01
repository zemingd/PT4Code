N, Q = gets.split.map(&:to_i)
S = gets.chomp
sum = Array.new(N+1, 0)
N.times do |i|
    sum[i] += sum[i-1]
    if S[i, 2] == 'AC'
        sum[i] += 1
    end
end
Q.times do
    l, r = gets.split.map(&:to_i)
    l -= 1
    r -= 1
    puts sum[r-1] - sum[l-1]
end