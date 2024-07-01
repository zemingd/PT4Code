s = gets.chomp
q = gets.to_i

queries = []
q.times do
  query = gets.split
  if (size = query.size) == 1
    queries << query.map(&:to_i)
  else
    queries << query.map.with_index(1) { |string, i| i == size ? string : string.to_i }
  end
end

answer = s.split('')

reverse = false

queries.each do |query|
  if query.first == 1
    reverse = !reverse
  else
    if (query[1] == 1 && !reverse) || (query[1] == 2 && reverse)
      answer.unshift(query.last)
    else
      answer.push(query.last)
    end
  end
end

answer = answer.reverse if reverse

puts answer.join
