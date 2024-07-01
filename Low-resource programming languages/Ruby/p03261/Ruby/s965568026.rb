# https://atcoder.jp/contests/abc109/tasks/abc109_b


N = gets.to_i
Ws = Array.new(N) { gets.chomp }

c2 = Ws.uniq.size == N
c1 = Ws.each_cons(2).all? { |w1, w2| w1[-1] == w2[0] }

puts c1 && c2 ? 'Yes' : 'No'
