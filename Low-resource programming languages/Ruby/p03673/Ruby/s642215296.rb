n = gets.to_i
as = gets.split.map(&:to_i)

ans = n.times.with_object([]) do |i, a|
  if i.even?
    a.push(as[i])
  else
    a.unshift(as[i])
  end
end

ans.reverse! if n.odd?
puts ans.join(" ")
