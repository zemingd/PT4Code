Sz = gets.to_i
Ar = gets.chomp.split(" ").map(&:to_i);
for i in 1..Sz
  puts Az.count(i.to_s)
end