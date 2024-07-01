h, w = gets.split.map(&:to_i)
n = h*w
s = $<.map{|l| (l.chomp.chars.map{|i|i!="#"}) }.flatten
way = [*0..(n-1)].select{|i|s[i]}
# warshall-floyd
INF = 999
dp = []
n.times{|start|
  dp << [*0..(n-1)].map{|goal|
    if (s[start]&&s[goal]) && (( (start-goal).abs==1 && start/w==goal/w ) || ( (start/w-goal/w).abs==1 && start%w==goal%w ))
      1
    else
      INF
    end
  }
}
way.each{|k|
  way.each{|i|
    way.each{|j|
      dp[i][j] = dp[i][k]+dp[k][j] if dp[i][j] > dp[i][k]+dp[k][j]
    }
  }
}
dp = dp.flatten
dp.delete(INF)
p dp.max
