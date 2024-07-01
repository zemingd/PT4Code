n = gets.to_i
u = n.times.map{[-1]*n}
n.times{|i|
  a = gets.to_i
  a.times{
    x,y = gets.split.map(&:to_i)
    u[i][x-1] = y
  }
}

def check(n,s,u)
  v = [0]*n
  n.times{|j|
    v[j] = s[j] if s[j]==1
  }
  n.times{|j|
    next if s[j]==0
    n.times{|k|
      next if u[j][k] == -1
      if v[k] !=  u[j][k]
        return false
      end
    }
  }
  return true
end

ans = 0
(2**n).times{|i|
  s = (2**n+i).to_s(2)[1..-1].split('').map(&:to_i)
  cnt = s.count(1)
  ans = cnt if check(n,s,u) && ans < cnt
}

p ans
