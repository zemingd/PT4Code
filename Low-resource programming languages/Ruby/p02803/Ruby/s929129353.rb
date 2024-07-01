# 18:57-
h, w = gets.to_s.split.map{|t|t.to_i}
a = Array.new(h){ gets.to_s.chomp.bytes }

inf = h * w
n = h * w
m = Array.new(n){ [inf] * n }
n.times{|i| m[i][i] = 0 }

h.times do |i|
  w.times do |j|
    
    next if a[i][j] == 35 # p '#'.ord #=> 35
    t = i * h + j
    
    if 0 <= j - 1 && a[i][j-1] == 46
      m[t][t-1] = 1
      m[t-1][t] = 1
    end
    
    if j + 1 < w && a[i][j+1] == 46
      m[t][t+1] = 1
      m[t+1][t] = 1
    end
    
    if 0 <= i - 1 && a[i-1][j] == 46
      m[t][t-w] = 1
      m[t-w][t] = 1
    end
    
    if i + 1 < h && a[i+1][j] == 46
      m[t][t+w] = 1
      m[t+w][t] = 1
    end
  end
end

n.times do |k|
  n.times do |i|
    n.times do |j|
      m[i][j] = m[i][k] + m[k][j] if m[i][j] > m[i][k] + m[k][j]
    end
  end
end

# pp m
t = m.flatten.uniq.sort[-2..-1]
puts t[-1] == inf ? t[-2] : t[-1]