H, W = gets.split.map(&:to_i)
s = []

H.times do
  s << gets.chomp
end

l = Array.new(H) { Array.new(W, 0) }
r = Array.new(H) { Array.new(W, 0) }

u = Array.new(H) { Array.new(W, 0) }
d = Array.new(H) { Array.new(W, 0) }

H.times do |i|
  W.times do |j|
    if s[i][j] == '.'
      if j == 0
        l[i][j] = 1
      else
        l[i][j] = l[i][j - 1] + 1
      end
    end


    if s[i][W - j - 1] == '.'
      if j == 0
        r[i][W - j - 1] = 1
      else
        r[i][W - j - 1] = r[i][W - j] + 1
      end
    end
  end
end

W.times do |i|
  H.times do |j|
    if s[j][i] == '.'
      if j == 0
        u[j][i] = 1
      else
        u[j][i] = u[j - 1][i] + 1
      end
    end

    if s[H - j - 1][i] == '.'
      if j == 0
        d[H - j - 1][i] = 1
      else
        d[H - j - 1][i] = d[H - j][i] + 1
      end
    end
  end
end

result = []
H.times do |i|
  W.times do |j|
    result << l[i][j] + r[i][j] + u[i][j] + d[i][j] - 3
  end
end

p result.max