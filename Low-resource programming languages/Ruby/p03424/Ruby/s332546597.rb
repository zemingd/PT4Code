_n, *hinaarare = $stdin.read.split.map(&:to_i)
ans = hinaarare.uniq.size == 4 ? "Four" : "Three"
puts ans