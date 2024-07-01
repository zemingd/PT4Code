n = gets.to_i
house = Array.new(4, 0).map{ Array.new(3, 0).map { Array.new(10, 0) } }

for i in 1..n
  b, f, r, v = gets.split(" ").map{ |x| x.to_i }
  house[b - 1][f - 1][r - 1] += v
end

for i in 0..3
  for j in 0..2
    puts " " + house[i][j].to_s.gsub(/[\[\]\,]/, "")
  end
  puts "####################" if i != 3
end