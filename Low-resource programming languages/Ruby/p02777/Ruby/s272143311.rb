balls = gets.chomp.split(" ")
ball_counts = gets.chomp.split(" ").map(&:to_i)
ball_hash = {}
balls.length.times do |i|
  ball_hash[balls[i]] = ball_counts[i]
end
remove_ball_name = gets
ball_hash[remove_ball_name] -= 1
puts ball_hash.map {|k, v| v}.join(" ")