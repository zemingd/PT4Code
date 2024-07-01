n = gets.split(" ").map(&:to_i)
b = readlines.map{|i| i.chomp.split.map(&:to_i)}
a = b.slice!(0,n[0])
bt = b.transpose
n[0].times do |i|
  c = []
  n[2].times do |j|
    c<<[a[i],bt[j]].transpose.map{|t| t.inject(:*)}.inject(:+)
  end
  puts c.join(" ")
end