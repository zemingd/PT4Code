def r;gets.split.map &:to_i;end

N,W = r
DP = [[0,0]] # weight, value

N.times do
  w,v = r
  DP.size.times do |i|
    next if DP[i][0] + w > W
    DP << [DP[i][0] + w, DP[i][1] + v]
  end

  DP.sort!

  i = 0
  while i < DP.size - 1
    unless DP[i][1] < DP[i+1][1]
      DP.delete_at(i+1)
    else
      i += 1
    end
  end
end

p DP[-1][1]