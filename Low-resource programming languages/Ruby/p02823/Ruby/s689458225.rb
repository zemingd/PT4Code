N,A,B=gets.split.map(&:to_i)
if (B-A).even?
    puts (B-A)/2
else
    puts [B-1,N-A].min
end