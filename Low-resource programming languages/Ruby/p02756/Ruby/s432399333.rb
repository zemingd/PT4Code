a = gets.chomp.to_s
q = gets.to_i
queries = q.times.map { gets.chomp.split(" ").map(&:to_s) }
ans = [a]
# ans = a
rev = false
queries.each do |query|
  if query[0] == "1"
    rev = !rev
  else
    (query[1] == "1") ^ rev ? ans.unshift(query[2]) : ans << query[2]
    # (query[1] == "1") ^ rev ? ans = query[2] + ans : ans += query[2]
  end
end
puts rev ? ans.join.reverse : ans.join
# puts rev ? ans.reverse : ans