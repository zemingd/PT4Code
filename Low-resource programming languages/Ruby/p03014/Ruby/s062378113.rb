h, w = gets.chop.split.map(&:to_i)
s = []
ans = 0

l = []
r = []
u = []
d = []

h.times do |i|
  s[i] = []
  tmp = gets.chop
  w.times do |j|
    s[i][j] = tmp[j]
  end
end


# 読み込みタイミングでもできそう
# 右左の長さは一箇所分かればよさそう
# 障害物に再度あたるまではそのまま
#
h.times do |i|
  l[i] = []
  r[i] = []
  u[i] = []
  d[h-i-1] = []
  w.times do |j|
    if s[i][j] == '#'
      l[i][j] = 0
    elsif j == 0
      l[i][j] = 1
    else
      l[i][j] = l[i][j-1] + 1
    end

    if s[i][w-j-1] == '#'
      r[i][w-j-1] = 0
    elsif w-j-1 == w-1
      r[i][w-j-1] = 1
    else
      r[i][w-j-1] = r[i][w-j] + 1
    end

    if s[i][j] == '#'
      u[i][j] = 0
    elsif i == 0
      u[i][j] = 1
    else
      u[i][j] = u[i-1][j] + 1
    end

    if s[i][j] == '#'
      d[h-i-1][j] = 0
    elsif h-i-1 == h-1
      d[h-i-1][j] = 1
    else
      d[h-i-1][j] = d[h-i][j] + 1
    end
  end
end

h.times do |i|
  w.times do |j|
    ans = [ans, r[i][j]+l[i][j]+u[i][j]+d[i][j]-3].max
  end
end

p ans
