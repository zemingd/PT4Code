n, m = gets.chomp.split.map(&:to_i)
a = Array.new(n) { Array.new }
n.times do |i|
  a[i] = gets.chomp.split.map(&:to_i)
end


d = a[0].slice(1..a[0].size)
n.times do |i|
  a[i][0] = 0
  d.each do |j|
    unless a[i].include?(j)
      d.delete(j)
    end
  end
end

p d.size