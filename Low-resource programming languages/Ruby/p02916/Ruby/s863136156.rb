n = gets.chomp.to_i

an = gets.chomp.split(" ").map(&:to_i);
bn = gets.chomp.split(" ").map(&:to_i);
cn = gets.chomp.split(" ").map(&:to_i);

before = -1
sum = 0
an.each do |a|
   #puts "#{before} - #{a}"
   sum += cn[a-2] if before  == a - 1
   before = a
end

puts (bn.sum + sum)