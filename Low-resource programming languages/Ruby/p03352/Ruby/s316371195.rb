x = gets.to_i
ar = []

(1..x).each do |b|
  (2..9).each do |i|
    if b**i <= x
       ar << b**i
    end
  end
end

puts ar.select { |n| n <= x }.max