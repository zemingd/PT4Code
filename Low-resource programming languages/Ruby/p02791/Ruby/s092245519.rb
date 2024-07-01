n = gets.to_i
ps = gets.split.map(&:to_i)
max = ps.first
count = 0

ps.each do |p0|
  if p0 <= max
    count += 1
    max = p0
  end
end

puts count