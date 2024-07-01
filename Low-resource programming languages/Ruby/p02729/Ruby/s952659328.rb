n,m = gets.split.map(&:to_i)
def C n,k
   if k==0 then
      return 1
   elsif n==k then
      return 1
   else
      return C(n-1,k-1)+C(n-1,k)
   end
end
a = n >= 2 ? C(n, 2) : 0
b = m >= 2 ? C(m, 2) : 0
puts a + b
