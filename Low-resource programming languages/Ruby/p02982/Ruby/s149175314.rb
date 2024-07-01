n,d = gets.chomp.split(" ").map(&:to_i)
x_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

count = 0
# i < j
(0..n-2).each do |i|
  (i+1..n-1).each do |j|
    dist = 0
    x_arr[i].zip(x_arr[j]).each do |y, z|
      dist += (y - z) ** 2
    end
    # integer?
    count += 1 if Math.sqrt(dist).to_i == Math.sqrt(dist)
  end
end

puts count
