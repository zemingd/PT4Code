input_line = gets.chomp.split(" ")
A, B, C, D = input_line.map {|i| i.to_i}
def winner(a,b,c,d)
    while (c > 0 || a > 0) do
        c -= b
        return 'Yes' if c <= 0
        a -= d
        return 'No' if a <= 0
    end
end
print winner(A,B,C,D)