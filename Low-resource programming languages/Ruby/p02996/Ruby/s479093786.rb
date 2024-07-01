n = gets.to_i
a = n.times.map{gets.split.map(&:to_i)}
time = 0
a.sort_by{|i,j| j}.each do |i,j|
  time += i
  if time > j
    puts "No"
    exit
  end
end
puts "Yes"