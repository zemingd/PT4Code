gets # n
hs = gets.split.map(&:to_i)

# h, c
_, c =
  hs.reduce([0, 0]) do |state, h|
    h_max, c = state
    [h_max < h ? h : h_max, c + (h_max <= h ? 1 : 0)]
  end

p c
