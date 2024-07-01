n=gets.to_i
line=gets.split(' ').map(&:to_i)
q=gets.to_i
lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}

q.times do |i|
  n.times do |m|
    if lines[i][0]==line[m]
 line[m]=lines[i][1] 
  end
  end
  p line.inject(:+)
end