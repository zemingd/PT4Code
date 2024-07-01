A,B=gets.chomp.split(" ").map(&:to_i);
if A == B
    X = 2*A
elsif A > B
    X = 2*A-1
else
    X = 2*B-1
end
puts X