n = gets.to_i
sp = []
n.times do |i|
  tmp = gets.split
  sp << {:num => i, :name => tmp[0], :score => tmp[1].to_i }
end
sp.sort! do |a, b|
  a[:name] == b[:name] ? b[:score] <=> a[:score] : a[:name] <=> b[:name]
end
sp.map{|e| puts (e[:num]+1)}