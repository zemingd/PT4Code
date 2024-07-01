L, R = gets.split.map(&:to_i)

if R - L > 2019
  puts "0"
  exit
end
min = Float::INFINITY
L.upto(R) do |i|
  (i + 1).upto(R) do |j|
    x = (i * j) % 2019
    min = x if min > x
  end
end
puts min