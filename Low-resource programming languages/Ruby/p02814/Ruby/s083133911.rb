_n, m = STDIN.readline.split(' ').map(&:to_i)
ary = STDIN.readline.split(' ').map(&:to_i).sort.uniq

lcm = ary.map {|x| x / 2 }.inject {|l, x| x.lcm(l) }
puts (m - (lcm)) / (lcm * 2) + 1
