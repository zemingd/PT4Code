capa = STDIN.read.split(/\s+/).map(&:to_i)
n = capa.shift
puts (n.to_f / capa.min).ceil + (capa.size - 1)