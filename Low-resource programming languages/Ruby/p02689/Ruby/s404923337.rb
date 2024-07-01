arr = gets.chomp.split(' ').map(&:to_i)
heights = gets.chomp.split(' ').map(&:to_i)
aaa = []
bbb = []
arr[1].times do
  abc = gets.chomp.split(' ').map(&:to_i)
  if heights[abc[0]-1] >= heights[abc[1]-1]
    aaa.push(heights[abc[0]-1])
  else
    aaa.push(heights[abc[1]-1])
  end
  bbb.push([abc[0]-1])
  bbb.push([abc[1]-1])
end
print aaa.uniq.size + arr[0] - 1 - bbb.uniq.size 