n = gets.chomp.to_i
takoyaki = gets.chomp.split(' ').map!(&:to_i)
sum =0
(0..n-1).each do |a|
    (a+1..n-1).each do |b|
      sum = sum + takoyaki[a]*takoyaki[b]
    end
end
puts sum