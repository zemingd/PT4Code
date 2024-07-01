N=gets.to_i
d=gets.split.map(&:to_i).sort

if N%2==0
    puts d[N/2]-d[N/2-1]
else
    puts 0
end