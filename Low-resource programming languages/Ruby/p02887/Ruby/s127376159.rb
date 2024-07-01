n = gets.to_i
slims = gets
answer = 0

for i in 0..n-1
  if slims[i] != slims[i+1]
    answer += 1
  end
end

puts answer