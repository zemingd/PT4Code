H, W = gets.split.map(&:to_i)
s = []

hr = []

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

result = []

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

  wr = r + Array.new(c, c)

  H.times do |j|
    next if hr[j][i] == 0 || wr[j] == 0
    result << hr[j][i] + wr[j] - 1
  end
end

p result.max