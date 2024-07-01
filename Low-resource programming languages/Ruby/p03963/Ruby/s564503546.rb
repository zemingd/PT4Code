n,k = gets.split.map(&:to_i)

ans = 1

n.times do |i|
  if i == 0
    ans = ans * k
  else
    ans = ans * (k - 1)
  end
end

puts ans
