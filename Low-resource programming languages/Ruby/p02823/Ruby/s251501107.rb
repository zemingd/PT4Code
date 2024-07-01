str = gets.split
N,A,B = str[0].to_i, str[1].to_i, str[2].to_i
dif = (A-B).abs

if dif % 2 == 0
    answer = dif/2
    puts answer
else
    a1 = (A+B-1)/2
    a2 = (2*N-A-B+1)/2
    answer = a1 < a2 ? a1 : a2
    puts answer
end