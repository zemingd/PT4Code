Sz = gets.to_i
Ar = gets.chomp.split(" ").map(&:to_i);
for i in 1..Sz-1
  puts Ar.count((i+1).to_s)
end