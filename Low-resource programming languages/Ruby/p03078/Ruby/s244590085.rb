x, y, z, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i).sort.reverse.slice(0...k)
b = gets.chomp.split(' ').map(&:to_i).sort.reverse.slice(0...k)
c = gets.chomp.split(' ').map(&:to_i).sort.reverse.slice(0...k)
ab = []
(0...[x, k].min).each do |i|
  (0...[y, k].min).each do |j|
    ab << a[i] + b[j]
  end
end
ab = ab.sort.reverse.slice(0...k)
abc = []
(0...[x * y, k].min).each do |i|
  (0...[z, k].min).each do |j|
    abc << ab[i] + c[j]
  end
end
abc = abc.sort.reverse.slice(0...k)
abc.each { |i| puts i }