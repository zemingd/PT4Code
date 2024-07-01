n = gets.to_i
as = gets.split.map(&:to_i)

ans = []

n.times do |i|
  if i.odd?
    ans.push(as[i])
  else
    ans.unshift(as[i])
  end
end

puts n.odd? ? ans.join(" ") : ans.reverse!.join(" ")
