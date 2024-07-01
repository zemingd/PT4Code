n,k=gets.split.map(&:to_i)
s = gets
g = "(1*" + (k).times.map { '0*' }.join('1*') + "1*)"
p n.times.map { |m| s[m..-1].match(g)[0].size }.max
