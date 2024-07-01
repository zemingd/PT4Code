ar = Array.new(4) { Array.new(3) { Array.new(10) {0}}}

gets
while line=gets
  b, f, r, v = *line.split(/\s+/).map(&:to_i)

  ar[b - 1][f - 1][r - 1] += v
end

puts ar.map {|b| b.map {|f| " " + f.join(" ")}.join "\n"}.join("\n" + "#" * 20 + "\n") 
