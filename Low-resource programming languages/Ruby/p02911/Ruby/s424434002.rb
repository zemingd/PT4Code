N, K, Q = gets.chomp.split().map(&:to_i)
points = Array.new(N, K - Q)

Q.times do
    winner = gets.chomp.to_i - 1
    points[winner] += 1
end
points.each do |point|
    if point > 0
        puts "Yes"
    else
        puts "No"
    end
end