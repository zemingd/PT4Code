n = gets.to_i
a = Array.new(4){Array.new(3){Array.new(10,0)}}

n.times do
  b, f, r, v = gets.split(" ").map(&:to_i)
  a[b - 1][f - 1][r - 1] += v
end

4.times do |i|
  3.times do |j|
    puts " " + a[i][j].join(" ")
  end
  if i == 3
    next
  end
  puts "#" * 20
end