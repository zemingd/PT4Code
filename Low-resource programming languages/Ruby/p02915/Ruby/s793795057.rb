n  = gets.strip.to_i
ans = []
count = 0
(1..n).each do |i|
  (1..n).each do |j|
    (1..n).each do |k|
      if [i, j, k].join
      count += 1
      end
    end
  end
end
puts count