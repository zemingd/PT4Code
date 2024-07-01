n = gets.to_i

d = Hash.new(0)

n.times do
  x = gets.rstrip
  d[x] += 1
end

as = d.to_a.sort_by { |kv| [-kv[1], kv[0]] }

v = as[0][1]

as.each do |kv|
  puts kv[0] if kv[1] == v
end
