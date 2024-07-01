a,b = gets.chomp.split.map(&:to_i)

ans = [a,b].min
idx = [a,b].max

t = ''


idx.times do |i|
  t = t + ans.to_s
end

puts t
