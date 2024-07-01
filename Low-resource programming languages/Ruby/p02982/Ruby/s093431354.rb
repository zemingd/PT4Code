n,d = gets.chomp.split(" ").map(&:to_i)
x_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

count = 0
(0..(x_arr.length-2)).each do |i|
  y = x_arr[i]
  ((i+1)..(x_arr.length-1)).each do |j|
    dist = 0
    z = x_arr[j]
    y.each_with_index do |y_i, ind|
      z_i = z[ind]
      dist += (y_i - z_i) ** 2
    end
    dist = Math.sqrt(dist)
    count += 1 if dist == dist.to_i
  end
end
puts count
