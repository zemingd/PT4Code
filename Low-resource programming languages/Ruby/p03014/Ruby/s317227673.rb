inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

H, W = inputs[0].split(" ").map(&:to_i)
mass = Array.new(H + 1, Array.new(W + 1, 0))
inputs[1..-1].map.with_index do |s, h|
  ws = []
  # p s
  s.each_char.with_index do |c, w|
    mass[h][w] =
      if c == "."
        1
      else
        0
      end
      # p [h, w, mass[h][w]]
  end
end

# p mass

h_hash = Array.new(H + 1, Array.new(W + 1, 0))
w_hash = Array.new(H + 1, Array.new(W + 1, 0))

# p mass[0]

h = -1
while h < H - 1; h += 1;
  w = -1
  bf = 0
  af = 0
  while w < W;  w += 1;
    if mass[h][w] == 0
      p [h, w, bf, af]
      af = w
      (bf...af).each do |_w|
        w_hash[h][_w] = (af - bf)
      end
      w_hash[h][w] = 0
      bf = w
    end
  end
end

w = -1
while w < W - 1;  w += 1;
  h = -1
  bf = 0
  af = 0
  while h < H; h += 1;
    if mass[h][w] == 0
      af = w
      (bf...af).each do |_h|
        h_hash[_h][w] = (af - bf)
      end
      h_hash[h][w] = 0
      bf = w
    end
  end
end

# p w_hash
# p h_hash

# p w_hash[0][0]

max = 0
h = -1
while h < H - 1; h += 1;
  w = -1
  while w < W - 1;  w += 1;
    next if mass[h][w] == 0

    res = w_hash[h][w] + h_hash[h][w] - 1
    max = [max, res].max
  end
end

puts max
