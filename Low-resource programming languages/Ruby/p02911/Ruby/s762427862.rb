N,K,Q = gets.split.map(&:to_i)
point = Array.new(N, 0)
Q.times do |i|
    a = gets.to_i
    point[a-1] += 1
end
point.each do |x|
    puts  x > (Q - K) ? "Yes" : "No"
end