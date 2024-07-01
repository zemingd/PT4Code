N = gets.chomp.to_i
d = gets.split.map(&:to_i)
d = d.sort
if N%2 == 1
    puts 0
else
    left = (N/2)-1
    right = (N/2)
    puts d[right]-d[left]
end