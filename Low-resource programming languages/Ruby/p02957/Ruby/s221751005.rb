a,b = gets.chomp.split(' ').map(&:to_i)
# |a-n| == |b-n| =>  a-n == b-n  :  a-b ==   0
#                   -a+n == b-n  : -a-b == -2n
#                    a-n == -b+n :  a+b ==  2n
#                   -a+n == -b+n : -a+b ==   0
n = (a+b)/2.to_f
if n.ceil == n.floor
  puts n.to_i
else
  puts "IMPOSSIBLE"
end