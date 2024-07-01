TREES,MAKEUP = gets.chomp.split(" ").map(&:to_i)
height = []
min = nil
TREES.times do
  height << gets.to_i
end
height.sort!
for i in 0...TREES-(MAKEUP-1)
  if min == nil || (height[i+MAKEUP-1] - height[i]) < min
    min = height[i+MAKEUP-1] - height[i]
  end
end
puts min