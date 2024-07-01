a = []
3.times { a << gets.split.map(&:to_i) }

b = []
n=gets.to_i
n.times { b << gets.to_i}

r = Array.new(3, Array.new(3))
3.times do |i|
  3.times do |j|
    r[i][j] = b.include?(a[i][j])
  end
end

3.times do |i|
  if (0..2).inject(true) { |acc, j| acc && r[i][j] }
    puts 'Yes'
    exit 0
  end
end

3.times do |i|
  if (0..2).inject(true) { |acc, j| acc && r[j][i] }
    puts 'Yes'
    exit 0
  end
end

if r[0][0] && r[1][1] && r[2][2]
  puts 'Yes'
  exit 0
end

if r[0][2] && r[1][1] && r[2][0]
  puts 'Yes'
  exit 0
end

puts 'No'
