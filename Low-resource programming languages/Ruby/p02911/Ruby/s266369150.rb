N, K, Q = gets.split.map(&:to_i)
A = Q.times.map { gets.to_i }
member_points = Array.new(N, K - Q)

A.each do |a|
  member_points[a-1] += 1
end

member_points.each do |mp|
  if mp > 0
    puts "Yes"
  else
    puts "No"
  end
end
