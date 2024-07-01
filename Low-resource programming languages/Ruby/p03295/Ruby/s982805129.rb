N, M = gets.split.map(&:to_i)

battles = []
M.times do
  battles << gets.split.map(&:to_i)
end

battles.sort_by!{|a, b| b}
last_b = battles[0][1]
count = 1

battles.each do |a, b|
  if a >= last_b
    last_b = b
    count += 1
  end
end

puts count