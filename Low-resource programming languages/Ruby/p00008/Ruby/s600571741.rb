ARGF.each_line do |line|
  count = 0
  n = line.to_i
  10.times do |i|
    10.times do |j|
      10.times do |k|
        10.times do |l|
          if i + j + k + l == n
            count += 1
          end
        end
      end
    end
  end
  puts count
end