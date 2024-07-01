a,b,c,x = 4.times.map {gets.to_i}
count = 0
(0..a).each do |a|
    (0..b).each do |b|
        (0..c).each do |c|
             count += 1 if a*500 + b*100 + c*50 == x
        end
    end
end

puts count