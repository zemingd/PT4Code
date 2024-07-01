def chmin(arr, arr_ind, x, y)
    if (x > y) 
        arr[arr_ind] = y
    end
    return arr
end

n = gets.to_i
a = gets.split(" ").map(&:to_i)
n.times { a << gets.to_i }

dp = Array.new(a.length, Float::INFINITY)

puts(a)
puts(dp)

dp[0] = 0

for i in 1..n-1 
    dp = chmin(dp, i, dp[i], dp[i-1] + (a[i] - a[i-1]).abs)
    if i > 1
        dp = chmin(dp, i, dp[i], dp[i-2] + (a[i-2] - a[i-2]))
    end
end

print(dp[n-1])

