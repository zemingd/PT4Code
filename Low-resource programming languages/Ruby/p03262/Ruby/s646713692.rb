N, X = gets.chomp.split(" ").map(&:to_i)
points = gets.chomp.split(" ").map(&:to_i)

abs_dis = []
points.each do |point|
  abs_dis.push( (point-X).abs )
end
divide = abs_dis.max
divide.times do |n|
  if abs_dis.count{|item| item % divide !=0 } == 0 then
    print("#{divide}")
    break
  end
  divide -= 1
end
