H, W = gets.split.map(&:to_i)
s = []

hr = []
wr = []

H.times do
  d = gets.chomp
  s << d

  r = []
  c = 0
  W.times do |i|
    if d[i] == '#'
      r = r + Array.new(c, c) + [0]
      c = 0
    else
      c += 1
    end
  end

  hr << r + Array.new(c, c)
end

W.times do |i|
  ns = ''
  H.times do |j|
    ns += s[j][i]
  end

  r = []
  c = 0
  H.times do |j|
    if ns[j] == '#'
      r = r + Array.new(c, c) + [0]
      c = 0
    else
      c += 1
    end
  end

  wr << r + Array.new(c, c)
end

result = []
H.times do |i|
  W.times do |j|
    next if s[i][j] == '#'

    result << hr[i][j] + wr[j][i] - 1
  end
end

p result.max