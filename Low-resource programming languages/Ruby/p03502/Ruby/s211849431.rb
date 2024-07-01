N = gets.to_i
def sum_of_digits(n)
 n.to_s.split("").map{ |s| s.to_i }.inject(:+)
end
a = sum_of_digits(N)
if N%a == 0
 puts("Yes")
 else puts("No")
end