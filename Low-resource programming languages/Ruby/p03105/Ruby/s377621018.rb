a,b,c=gets.chomp.split(" ").map(&:to_i);
if b/a >= c
    puts c
else
    puts b/c
end