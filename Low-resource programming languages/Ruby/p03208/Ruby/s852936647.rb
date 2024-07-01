N, K = gets.split.map(&:to_i)

h = N.times.map { gets.to_i }

puts h.sort.each_cons(K).map {|hh|
  hh[K - 1] - hh[0]
}.min
