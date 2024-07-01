X = gets.to_i

puts 1 if (X == 1 || X == 2 || X == 3)

X.downto(0).each do |i|
  1.upto(i).each do |b|
    2.upto(i/b).each do |p|
        if b ** p == i
          puts i
          exit
        elsif b ** p > i
          next
        end
    end
  end
end
