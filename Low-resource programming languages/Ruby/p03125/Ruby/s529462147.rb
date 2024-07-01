=begin
    A - B+/-A
=end
a,b = gets.chomp.split(" ").map(&:to_i);
if (b % a) == 0 then
    print("#{a+b}\n");
else
    print("#{b-a}\n");
end
