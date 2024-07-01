L,R = gets.split.map(&:to_i)
Z = 2019
left = L/Z
right = R/Z
if left == right && L%Z!=0 then
    puts (L % Z) * (L+1) % Z
else
    puts "0"
end