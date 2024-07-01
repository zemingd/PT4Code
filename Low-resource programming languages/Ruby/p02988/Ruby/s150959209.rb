n = gets.to_i
P = gets.split.map(&:to_i)

cnt = 0

(n-2).times do |i|
  if P[i,3].sort[1] == P[i+1]
    cnt += 1
  end
end

puts cnt