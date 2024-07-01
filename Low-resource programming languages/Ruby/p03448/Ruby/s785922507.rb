a,b,c,x = 4.times.map { gets.to_i }

cnt = 0

(0..a).each do |n|
  (0..b).each do |m|
    (0..c).each do |l|
      cnt += 1 if 500 * n + 100 * m + 50 * l == x
    end
  end
 end

puts cnt