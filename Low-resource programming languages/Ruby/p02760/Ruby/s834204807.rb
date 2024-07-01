# frozen_string_literal: true

a = []
a.push gets.split.map(&:to_i)
a.push gets.split.map(&:to_i)
a.push gets.split.map(&:to_i)

n = gets.to_i
b = n.times.map { gets.to_i }

c = Array.new(3) { Array.new(3) { false } }

b.each do |e|
  (0..2).each do |i|
    j = a[i].index(e)
    c[i][j] = true if j
  end
end

(0..2).each do |i|
  if c[i][0] && c[i][1] && c[i][2]
    puts 'Yes'
    exit
  end
end

(0..2).each do |i|
  if c[0][i] && c[1][i] && c[2][i]
    puts 'Yes'
    exit
  end
end
if (c[0][0] && c[1][1] && c[2][2]) || (c[0][2] && c[1][1] && c[2][0])
  puts 'Yes'
else
  puts 'No'
end
