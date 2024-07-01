n, *ary = $stdin.read.split.map(&:to_i)
puts(ary.reduce(&:lcm))