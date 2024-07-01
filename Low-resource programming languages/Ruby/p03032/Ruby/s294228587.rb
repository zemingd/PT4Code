n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)

ans = -Float::INFINITY
(0..k).each do |x|
  (0..x).each do |y|
    (0..(x - y)).each do |z|
      visted = {}
      sum = 0
      garbages = []
      
      y.times do |i|
        if 0 <= i && i < n && !visted[i]
          sum += v[i]
          visted[i] = true
          garbages << v[i] if v[i] < 0
        end
      end

      z.times do |i|
        j = n - i - 1
        if 0 <= j && j < n && !visted[j]
          sum += v[j]
          visted[j] = true
          garbages << v[j] if v[j] < 0
        end
      end

      garbages.sort!
      (x - y - z).times do |i|
        sum -= garbages[i] if i < garbages.size
      end

      ans = [ans, sum].max
    end
  end
end

puts ans