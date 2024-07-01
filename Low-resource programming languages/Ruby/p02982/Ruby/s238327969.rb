inp = gets.split.map!(&:to_i)
X = []
inp[0].times do |i|
  X[i] = gets.split.map!(&:to_i)
end
#p X  #for debug
#puts X[0][0]  #for debug

count = 0
inp[0].times do |i|
  (i+1).upto(inp[0]-1) do |j|
    dist = 0
    inp[1].times do |k|
      d = (X[i][k] - X[j][k]).abs
      dist += d**2  #これが2点の距離
    end
    dist.times do |x|
      if x**2 == dist
        count += 1
        break
      end
    end
  end
end
puts count
