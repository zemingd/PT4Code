str= gets.chomp
#n, x = gets.chomp.split(" ").map(&:to_i);
#a = gets.chomp.split(" ").map(&:to_i);

a = gets.chomp.split(" ").map(&:to_i);
b = []

a.each do |n|
  b << n
  b.reverse!
end

puts b.join(" ")
