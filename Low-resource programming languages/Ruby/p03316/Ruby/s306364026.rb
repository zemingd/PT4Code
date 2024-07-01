N = gets.to_i
tmp_n = N

d_sum = 0
d_len = N.to_s.length
d_len.times do
    d_sum += tmp_n % 10
    tmp_n /= 10
end

puts N % d_sum == 0 ? "Yes" : "No"
