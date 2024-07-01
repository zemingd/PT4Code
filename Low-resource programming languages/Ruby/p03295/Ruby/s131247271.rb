n, m = gets.split.map(&:to_i)
claims = readlines.map(&:chomp).map{|s| s.split(" ").map(&:to_i)}

claims.sort_by! { |claim| claim[1] }
answer = 0
last_end = 0
claims.each do |claim|
  next if claim[0] < last_end

  last_end = claim[1]
  answer += 1
end
puts answer
