d, n=gets.chomp.split(" ").map(&:to_i);
if d == 0 then
    puts n
else
    puts (100**d)*n
end