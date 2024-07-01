N, W = gets.split.map(&:to_i)
WV = N.times.map{gets.split.map(&:to_i)}.sort_by{|a|[a[0], a[1]]}
#N = 100
#W = 10 ** 5
#WV = N.times.map{[rand(1..W-1), rand(1..10**9)]}.sort_by{|a|[a[0], a[1]]}

dp = Array.new(10**5 + 5, 0)

dp[0] = 0
que = [0]
N.times do |i|
  add_que = []
  que.each do |w|
    nw = WV[i][0] + w
    nv = WV[i][1] + dp[w]
    next if nw > W
    if dp[nw] < nv
      add_que << nw if dp[nw] == 0
      dp[nw] = nv
    end
  end
  que += add_que
end

p dp.max