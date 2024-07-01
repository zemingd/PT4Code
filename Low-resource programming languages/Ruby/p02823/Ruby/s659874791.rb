N,A,B=gets.split.map(&:to_i)
if (A-B).abs.even?
    puts (A-B).abs/2
else
    puts [A-1,N-B].min if A>B
    puts [B-1,N-A].min if A<B
end