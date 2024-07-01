n = gets.to_i
p_n = gets.chomp.split(" ").map(&:to_i)

min = p_n[0]

res = 0

n.times do |i|
  if p_n[i] <= min
    res += 1
  end

  if p_n[i] < min
    min = p_n[i]
  end
end

puts(res)