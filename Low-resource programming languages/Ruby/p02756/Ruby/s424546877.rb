a = gets.chomp.to_s
q = gets.to_i
queries = q.times.map { gets.chomp.split(" ").map(&:to_s) }
ans = [a]
rev = true
queries.each do |query|
  if query[0] == "1"
    rev = !(rev)
  else
    (query[1] == "1") ^ rev ? ans.push(query[2]) : ans << query[2]
  end
end
puts rev ? ans.reverse.join : ans.join