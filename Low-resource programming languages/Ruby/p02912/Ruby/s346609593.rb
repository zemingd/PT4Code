n,m=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
m.times do
  as[-1]/=2.0
  as.sort!
end
puts as.map(&:to_i).inject(:+)
