A,B = gets.split.map(&:to_i)
S = gets.chomp
leng = S.length
if S[A] == "-" && leng == A+B+1
 puts("Yes")
 else puts("No")
end