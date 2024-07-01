N = gets.to_i
list = []
N.times do |i|
  a,b = gets.split
  b = b.to_i
  list << [i+1,a,b]
end
list.sort_by!{|t| [t[1],-t[2]]}
list.each do |t|
  p t[0]
end
