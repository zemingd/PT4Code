a = []
3.times do
  a << gets.split.map(&:to_i)
end
a.flatten!
bingos = [
  a[0..2],
  a[3..5],
  a[6..8],
  [a[0], a[3], a[6]],
  [a[1], a[4], a[7]],
  [a[2], a[5], a[8]],
  [a[0], a[4], a[8]],
  [a[2], a[4], a[6]],
]
n = gets.to_i
nums = []
n.times do
  nums << gets.to_i
end
bingos.each do |b|
  if (b - nums).empty?
    puts 'Yes'
    exit 0
  end
end
puts 'No'