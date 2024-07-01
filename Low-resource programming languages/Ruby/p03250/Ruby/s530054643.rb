a, b, c= readline.chomp.split.map(&:to_i)
p [a,b,c].sort.reverse.slice(0..1).join.to_i + a 