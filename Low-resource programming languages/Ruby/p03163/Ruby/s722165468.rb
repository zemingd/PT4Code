n, w = gets.chomp.split(' ').map{ |e| e.to_i }

# [[w1, v1], ...]
s = []
n.times{|i|
  s[i] = gets.chomp.split(' ').map{ |e| e.to_i }
}
# p ['s', s]

# { w1 => v1, ... }
dp = {}
dp[0] = 0
# p ['dp', dp]

s.each{|si|
  newdp = dp
  # p ['newdp init', newdp]
  dp.each{|key, value|
    # p ['si', si]
    wsum = key + si[0]
    vsum = value + si[1]
    newdp[wsum] = vsum if wsum <= w && (newdp[wsum].nil? || newdp[wsum] < vsum)
    # p ['newdp iter', newdp]
  }
  dp = newdp
}

max = 0
dp.each_value{|value|
  max = value if value > max
}
puts max
