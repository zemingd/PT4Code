n,m=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
changes=[]
m.times do
  bn,cn=gets.split.map(&:to_i)
  changes.push([cn]*bn)
end
all=(as+changes.flatten).sort
puts all[-n..-1].inject(:+)
