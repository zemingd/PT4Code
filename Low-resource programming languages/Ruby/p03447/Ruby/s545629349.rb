a,b,c,x = 4.times.map { gets.to_i }
count = 0

(0..a).each do |h|
  (0..b).each do |i|
    (0..c).each do |j|
     if h * 500 + i * 100 + j *50 == x
       count += 1
    end
  end
end

puts count
