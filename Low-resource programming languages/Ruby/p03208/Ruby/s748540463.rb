N, K = gets.split.map(&:to_i)
H = N.times.map { gets.to_i }.sort

diff_min = Float::INFINITY
H.each_cons(K) do |hs|
  diff_min = [diff_min, hs[-1] - hs[0]].min
end

puts diff_min
