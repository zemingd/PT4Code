n = gets.to_i

ans = 0
nums = n.times.with_object(Hash.new(0)) do |_, h|
  i = gets.to_i
  h[i] += 1

  ans = h[i].odd? ? ans + 1 : ans - 1
end

puts ans
