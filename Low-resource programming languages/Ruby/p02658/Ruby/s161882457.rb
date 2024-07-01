N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)
m = 1
# def multi(i)
#   return 1 if A[i] == nil
#   return multi(i-1)
# end
flag = false
 for i in 0..N-1 do
   if m > 10**18
     break
   end
   if A.include?(0)
     flag = true
     break
   end
   m *= A[i]
 end
 if m > 10**18
   m = -1
 end
 if flag
   m = 0
 end
p m
