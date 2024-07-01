a,b,c=gets.chomp.split(" ").map(&:to_i);
if b/a >= c
    puts c
else
    d = b/a
    d = d.floor
    puts d
end