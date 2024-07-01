# https://atcoder.jp/contests/abc155/tasks/abc155_c


N = gets.to_i
Ss = Array.new(N) { gets.chomp }

g = Ss.group_by(&:itself).map { |k, v| [k, v.size] }.sort_by { |(k, v)| [-v, k] }
g.select { |(k, v)| v == g[0][1] }.each { |k, _V| puts k }
