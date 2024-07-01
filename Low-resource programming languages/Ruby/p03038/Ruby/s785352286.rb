n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort
b = []
m.times do |i|
  b[i] = gets.chomp.split.map(&:to_i).reverse
end
b.sort!
m.times do |i|
  b[i][1].times do |j|
    if a[j] < b[i][0]
      a[j] = b[i][0]
    else
      break
    end
  end
  a.sort!
end
puts a.inject(:+)
