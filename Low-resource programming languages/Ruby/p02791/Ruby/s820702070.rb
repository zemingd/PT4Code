n = gets.to_i
ps = gets.split.map(&:to_i)

ans = 0
min = n + 1000

ps.each do |p|
  if p < min
    min = p
    ans += 1
  end
end

puts ans