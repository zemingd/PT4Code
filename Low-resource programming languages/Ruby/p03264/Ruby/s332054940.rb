k = gets.to_i
if k % 2 == 1
    puts k/2 * ((k-1)/2)
else
    puts k/2 * ((k+1)/2)
end