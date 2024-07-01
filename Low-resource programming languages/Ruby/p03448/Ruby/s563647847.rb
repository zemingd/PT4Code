A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

output = 0

(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      if (500 * a + 100 * b + 50 * c) == X
        output += 1
      end
    end
  end
end

puts output
