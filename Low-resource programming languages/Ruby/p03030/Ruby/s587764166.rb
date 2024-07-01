n = gets.to_i
sp = []
n.times do |i|
  s, p = gets.chomp.split
  sp << {:i => i+1, :s=> s, :p=>p.to_i}
end

sp.sort_by!{|x| [x[:s], -x[:p]]}

sp.each{ |x| puts x[:i] }
