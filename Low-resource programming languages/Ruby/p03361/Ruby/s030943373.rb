Y = [-1,0,1,0]; X = [0,-1,0,1]
H, W = gets.split.map(&:to_i)
areas = [] << Array.new(W+2, "@")
H.times do
  areas << ["@"] + gets.chomp.split('') + ["@"]
end
areas << Array.new(W+2, "@")
# areas.each do |a|
#   p a
# end

1.upto(H) do |i|
  1.upto(W) do |j|
    if areas[i][j] == "#"
      check = false
      4.times do |k|
        nexy = i + Y[k]
        nexx = j + X[k]
        nexarea = areas[nexy][nexx]
        if nexarea == "#" || nexarea == "!"
          nexarea = "!" if nexarea == "#"
          check = true
        end
      end
      if check
        areas[i][j] = "!"
      else
        puts "No"
        exit
      end
    end
  end
end
puts "Yes"