n, y = gets.chomp.split(" ").map(&:to_i)
z = y / 1000
a = [n, y / 10000].min
b = [n, y / 5000].min
c = [n, y / 1000].min
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      if i + j + k == n && i * 10 + j * 5 + k * 1 == z then
        puts "#{i} #{j} #{k}"
        exit
      end
    end
  end
end

puts "-1 -1 -1"
