def digit_sum(n, sum = 0)
    s = sum + n % 10
    i = n.div(10)
    i > 0 ? digit_sum(i, s) : s
end
N = gets.to_i
puts N % digit_sum(N) == 0 ? 'Yes' : 'No'