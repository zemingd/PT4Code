N, K, Q = gets.split.map(&:to_i)
As = readlines.map(&:to_i)

as = As.each_with_object(Array.new(N + 1, 0)){|a, o| o[a] += 1 }
puts (1 .. N).map{|i| K - Q + as[i] > 0 ? 'Yes' : 'No'}