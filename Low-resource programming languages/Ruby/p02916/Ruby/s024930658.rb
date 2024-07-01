n=gets.to_i
aNs=gets.chomp.split.map(&:to_i)
bNs=gets.chomp.split.map(&:to_i)
cNs=gets.chomp.split.map(&:to_i)
total=0
beforeIndex = -1
aNs.each do |value|
  index = value - 1
  total += bNs[index]
  if beforeIndex != -1
    diff =  index - beforeIndex
    total += cNs[beforeIndex]  if diff == 1
  end
  beforeIndex = index
end
puts total