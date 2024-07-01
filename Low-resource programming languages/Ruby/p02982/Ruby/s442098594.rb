n,d = gets.chomp.split(" ").map(&:to_i)
x_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

count = 0
(0..n-2).each do |i|
  (i+1..n-1).each do |j|
    y = x_arr[i]
    z = x_arr[j]
    dist = 0
    y.zip(z).each do |yi, zi|
      dist += (yi - zi) ** 2
    end
    count += 1 if Math.sqrt(dist).to_i == Math.sqrt(dist)
  end
end

puts count
