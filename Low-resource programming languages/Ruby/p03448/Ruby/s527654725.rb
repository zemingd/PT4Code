A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i
count = 0

(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      if X - (a*500 + b*100 + c*50) == 0
        count += 1
      end
    end
  end
end

puts count