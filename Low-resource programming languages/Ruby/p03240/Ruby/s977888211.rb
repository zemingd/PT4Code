N = gets.to_i
lists = []
N.times do
  lists << gets.split.map(&:to_i)
end
# p lists
(0..100).each do |i|
  (0..100).each do |j|
    pre = nil
    check = true
    dist = nil
    lists.each do |x, y, z|
      next if z < 1
      dist = z + (i - x).abs + (j - y).abs
      check = false if (pre ||= dist) != dist
    end
    if check && dist >= 1
      puts "#{i} #{j} #{dist}"
      exit
    end
  end
end