a, b, c = $<.readline.split.map(&:to_i)
p (a..b).count{|d| c % d == 0}