input = gets.chomp;
a = input.split(" ").map(&:to_i);

a.sort!;
sum = 0;
for i in 0..a.size-2 do
    b = a[i];
    c = a[i+1];
    sum += (b - c).abs
    i += 1;
end
puts sum