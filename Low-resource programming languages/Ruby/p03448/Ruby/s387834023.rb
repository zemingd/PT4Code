A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

count = 0
(A+1).times do |a|
  (B+1).times do |b|
    (C+1).times do |c|
      if (500 * a) + (100 * b) + (50 * c) == X
        count += 1
      end
    end
  end
end

p count