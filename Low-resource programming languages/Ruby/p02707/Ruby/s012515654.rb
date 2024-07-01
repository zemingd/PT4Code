N=gets.to_i
a=gets.split.map &:to_i
N.times do |i|
  puts a.count(i+1)
end