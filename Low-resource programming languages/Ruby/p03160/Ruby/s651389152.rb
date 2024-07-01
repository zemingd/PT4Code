N = gets.to_i
arr_h = gets.split(' ').map(&:to_i)

dp = Hash.new
N.times do |ind|

  if ind == 0 
    dp[0] = 0
  elsif ind == 1
    dp[1] = (arr_h[ind] - arr_h[ind - 1]).abs
  else
    a = dp[ind - 1].to_i + (arr_h[ind] - arr_h[ind - 1]).abs
    b = dp[ind - 2].to_i + (arr_h[ind] - arr_h[ind - 2]).abs

    if a <= b
        dp[ind] = a
    else 
        dp[ind] = b
    end       

  end

end

p dp[N-1]