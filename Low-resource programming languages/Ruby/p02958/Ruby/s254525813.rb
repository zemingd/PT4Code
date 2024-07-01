N = gets.to_i
P = gets.split.map(&:to_i)

count = 0
N.times do |i|
  if i+1 != P[i]
    count += 1
  end
end

puts count <= 2 ? "Yes" : "No"