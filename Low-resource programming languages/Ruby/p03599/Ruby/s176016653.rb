A, B, C, D, E, F = gets.split.map(&:to_i)

w = [ 100 * A, 100 * B ]
water = Array.new(2+1) { Array.new(F+1, false) }
3.times { |i| water[i][0] = true }

2.times do |i|
  (1..F).each do |j|
    water[i+1][j] |= water[i][j]
    water[i+1][j] |= water[i+1][j-w[i]] if j >= w[i]
  end
end

s = [ C, D ]
sugar = Array.new(2+1) { Array.new(F+1, false) }
3.times { |i| sugar[i][0] = true }

2.times do |i|
  (1..F).each do |j|
    sugar[i+1][j] |= sugar[i][j]
    sugar[i+1][j] |= sugar[i+1][j-s[i]] if j >= s[i]
  end
end

max = -1
max_w, max_s = 0, 0
w, s = 0, 0
until w >= F
  if water[2][w]
    until s >= F
      if sugar[2][s]
        con = (100 * s) / (w + s).to_f
        if max < con
          max = con
          max_w = w
          max_s = s
        end
      end
      break if s + 1 > (w / 100) * E
      break if w + s + 1 > F
      s += 1
    end
  end
  w += 100
  break if w + s > F
end

puts [max_w + max_s, max_s] * " "