a,b,c,x = 4.times.map { gets.to_i }
count = 0

(0..a).each do |h|
  (0..b).each do |i|
    (0..c).each do |j|
     count += 1 if h * 500 + i * 100 + j *50 == x
    end
  end
end

puts count