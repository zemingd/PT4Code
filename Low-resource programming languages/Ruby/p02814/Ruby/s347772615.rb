_n, m = STDIN.readline.split(' ').map(&:to_i)
ary = STDIN.readline.split(' ').map(&:to_i).sort.uniq

lcm = ary.inject {|l, x| x.lcm(l) }
puts (m - (lcm / 2)) / lcm + 1
