a,b,c,x = 4.times.map{ gets.to_i }

cnt = 0

(0..a).each do |i|
  (0..b).each do |m|
    (0..c).each do |n|
      cnt += 1 if a * 500 + b * 100 + c * 50 == x
    end
  end
end

puts cnt