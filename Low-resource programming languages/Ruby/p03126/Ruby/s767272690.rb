n, m = gets.chomp.split.map(&:to_i)
a = Array.new(n) { Array.new }
n.times do |i|
  a[i] = gets.chomp.split.map(&:to_i)
end

if n < 25
  1 / 0
end

d = a[0].slice(1..a[0].size)
n.times do |i|
  if i == 0
    next
  end

  a[i].slice!(1..a[i].size)
  d.each do |j|
    unless a[i].include?(j)
      d.delete(j)
    end
  end
end

p d.size