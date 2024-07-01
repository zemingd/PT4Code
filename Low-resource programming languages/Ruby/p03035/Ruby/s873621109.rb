A,B=gets.chomp.split(" ").map(&:to_i);
if A<6
    B = 0
elsif A <12
    B = B/2
end
puts B