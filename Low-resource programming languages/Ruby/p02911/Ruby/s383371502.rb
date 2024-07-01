N, K, Q = gets.split(" ").map(&:to_i)
points = Array.new(N, K)

Q.times do |i|
    points.map!{|x| x -= 1}
    A = gets.to_i
    points[A - 1] += 1
end
puts points
points.each do |p|
    if p <= 0
        puts "No"
    else
        puts "Yes"
    end
end