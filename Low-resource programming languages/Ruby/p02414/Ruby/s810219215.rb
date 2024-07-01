n = gets.split(" ").map(&:to_i)
b = readlines.map{|i| i.chomp.split.map(&:to_i)}
a = b.slice!(0,n[0])
c = Array.new(n).map{Array.new(l,0)}
bt = b.transpose
n[0].times do |i|
  n[2].times do |j|
    c[i][j]<<[a[i],bt[j]].transpose.map{|t| t.inject(:*)}.inject(:+)
  end
  puts c[i].join(" ")
end