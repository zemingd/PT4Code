lines = readlines.map(&:chomp)

n = lines[0].to_i
xs = lines[1].split(' ').map(&:to_i)

position = (xs.reduce(&:+).to_f / n.to_f).round
cost = xs.map {|x| (x - position) ** 2 }.reduce(&:+)

print cost

