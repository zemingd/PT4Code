N, M = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i)
grids = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

numbers = []
A.each do |n|
  numbers.push([n, grids[n]])
end
numbers.sort_by!{|a| [a[1], -a[0]]}

dp = Array.new(N+1)
dp[0] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
1.upto(N) do |ma|
  numbers.each do |i|
    next if ma < i[1]
    if dp[ma - i[1]] != nil
      cand = [0] * 10
      1.upto(9) do |l|
        cand[l] = dp[ma - i[1]][l]
      end
      cand[i[0]] = cand[i[0]] + 1
 	  if dp[ma] == nil
        dp[ma] = cand
      else
        mx = true
        9.downto(1) do |j|
          next if dp[ma][j] == cand[j]
          if dp[ma][j] > cand[j]
            mx = false
            break
          end
          if dp[ma][j] < cand[j]
            break
          end
        end
        dp[ma] = cand if mx
      end
    end
  end
end
ans = ""
9.downto(1) do |i|
  ans = ans + i.to_s * dp[N][i]
end
puts ans