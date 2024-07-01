n = gets.chomp.to_i
a = []
n.times do
  a.push(gets.chomp.to_i)
end
p a.group_by(&:itself).map{ |key, value| value.count }.count{|e| e.odd? }
