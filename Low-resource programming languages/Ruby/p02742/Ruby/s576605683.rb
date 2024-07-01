h, w = gets.split.map(&:to_i)

all = h * w
if h.odd?
  puts all / 2 + 1
else
  puts all / 2
end
