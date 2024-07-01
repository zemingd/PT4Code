N, K, Q = gets.chomp.split().map(&:to_i)
points = Array.new(N, K)

Q.times do
    winner = gets.chomp.to_i - 1
    points.each_with_index do |point, idx|
        if idx == winner || point < 0
            next
        end
        points[idx] -= 1
    end
end
points.each do |point|
    if point > 0
        puts "Yes"
    else
        puts "No"
    end
end