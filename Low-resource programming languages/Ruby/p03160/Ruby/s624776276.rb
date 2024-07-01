N = gets.to_i
h_arr = gets.split(" ").map{|s| s.to_i }
memo = [0, 0]

N.times {|n|
    if n == 1
        next
    elsif n == 2
        cost = (h_arr[n-2] - h_arr[n-1]).abs
        memo[1] += cost
    elsif n % 2 == 1
        cost1 = (h_arr[n-2] - h_arr[n-1]).abs + memo[1]
        cost2 = (h_arr[n-3] - h_arr[n-1]).abs + memo[0]
        memo[0] = cost1 < cost2 ? cost1 : cost2
    else
        cost1 = (h_arr[n-2] - h_arr[n-1]).abs + memo[0]
        cost2 = (h_arr[n-3] - h_arr[n-1]).abs + memo[1]
        memo[1] = cost1 < cost2 ? cost1 : cost2
    end
}

puts memo[(N+1) % 2]