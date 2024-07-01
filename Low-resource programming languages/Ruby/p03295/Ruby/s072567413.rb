N, M = gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

def cut(g, acc)
  return acc if g.empty?
  x = g.map(&:first).min
  y = g.map(&:last).min
  cut(g.reject{|a, b| (x ... y).include?(a)}, acc += 1)
end

puts cut(ABs, 0)