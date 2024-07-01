n, m = gets.split.map(&:to_i)
rets = []
m.times do
  p, y = gets.split.map(&:to_i)
  rets.push({ p: p, y: y})
end
rets.map{|x| x[:p]}.uniq.each do  |p|
  sorted = rets.select{|x| x[:p] == p}.sort{|a,b| a[:y] <=> b[:y]}
  sorted.each_with_index do |x, i|
    x[:code] = x[:p].to_s.rjust(6, '0') + (i + 1).to_s.rjust(6, '0')
  end
end
rets.each do |r|
  puts r[:code]
end
  