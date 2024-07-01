a,b,c,k = gets.split(' ').map(&:to_i)

if k <= a
    puts k.to_s
elsif k <= a+b
    puts a.to_s
else
    puts (a-(k-a-b)).to_s
end
