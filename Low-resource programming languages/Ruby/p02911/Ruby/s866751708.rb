N, K, Q = gets.split(" ").map(&:to_i)
points = Array.new(N, K)

Q.times do |i|
    A = gets.to_i
    points[A - 1] += 1
end

points.each do |p|
    p -= Q
    if p <= 0
        puts "No"
    else
        puts "Yes"
    end
end