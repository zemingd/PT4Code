a = []
3.times do |i|
  a[i] = gets.chomp.split.map(&:to_i)
end
n = gets.chomp.to_i
b = []
n.times do
  b.push(gets.chomp.to_i)
end
c = []
3.times do |i|
  c[i] = Array.new(3, false)
end
3.times do |i|
  3.times do |k|
    if b.include?(a[i][k])
      c[i][k] = true
    end
  end
end
3.times do |i|
  if c[i].all?
    puts 'Yes'
    exit
  end
end
3.times do |i|
  if c[0][i] && c[1][i] && c[2][i]
    puts 'Yes'
    exit
  end
end
if (c[0][0] && c[1][1] && c[2][2]) || (c[2][0] && c[1][1] && c[0][2])
  puts 'Yes'
  exit
end
puts 'No'
