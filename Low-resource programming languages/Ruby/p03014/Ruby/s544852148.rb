h,w = gets.chomp.split.map(&:to_i)
grid=[]
h.times do
  grid.push gets.chomp.split(//).map{|c| c == '#'}
end
