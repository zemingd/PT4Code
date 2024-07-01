gets
aaa = gets.split.map(&:to_i).sort # .map{|aa|[aa, false]} # 書き換えたか？
xxx = []
# p aaa
while g = gets&.split&.map(&:to_i)
  g[0].times do
    xxx << g[1]
  end
end
xxx.sort_by!(&:-@)
sum = 0
[aaa.size, xxx.size].max.times do |i|
  next if aaa[i].nil?
  sum += [aaa[i] || 0, xxx[i] || 0].max

end
puts sum
