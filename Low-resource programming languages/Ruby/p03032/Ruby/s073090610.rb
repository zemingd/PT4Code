n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)

ans = -Float::INFINITY
(0..k).each do |x|
  (0..x).each do |y|
    (0..(x - y)).each do |z|
      q = v.dup
      sum = 0
      garbages = []
      
      y.times do
        jewelry = q.shift
        next if jewelry.nil?
        sum += jewelry
        garbages << jewelry if jewelry < 0
      end

      z.times do
        jewelry = q.pop
        next if jewelry.nil?
        sum += jewelry
        garbages << jewelry if jewelry < 0
      end

      garbages.sort!
      (x - y - z).times do 
        garbage = garbages.shift
        sum -= garbage unless garbage.nil?
      end

      ans = [ans, sum].max
    end
  end
end

puts ans