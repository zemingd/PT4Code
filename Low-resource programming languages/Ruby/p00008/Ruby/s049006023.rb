while true do
  n = gets
  break if n == nil
  count = 0
  10.times do |i|
    10.times do |j|
      10.times do |k|
        10.times do |l|
          count += 1 if i+j+k+l == n.to_i
        end
      end
    end
  end

  puts count
end