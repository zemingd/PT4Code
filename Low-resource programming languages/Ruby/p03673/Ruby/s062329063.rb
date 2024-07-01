n = gets.to_i
as = gets.split.map(&:to_i)

ans = []
reversed = false

n.times do |i|
  if reversed
    ans.push(as[i])
  else
    ans.unshift(as[i])
  end
  reversed = !reversed
end

puts reversed ? ans.join(" ") : ans.reverse!.join(" ")
