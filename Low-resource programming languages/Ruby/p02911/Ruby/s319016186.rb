N, K, Q = gets().chomp.split(" ").map(&:to_i)

init_point = K - Q
points = Array.new(N).map {|v| v = init_point }

Q.times do
  answer = (gets().chomp.to_i) -1
  points[answer] += 1
end

points.map {|v| v > 0 ? p("Yes") : p("No") }