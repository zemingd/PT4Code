#!/usr/local/bin/ruby
while true
 n = gets.to_i
 count = 0
 (0..9).to_a.repeated_permutation(4) do |a,b,c,d|
  if a+b+c+d == n
   #printf("(%d, %d, %d, %d)\n",a,b,c,d)
   count +=1
  end
 end
 puts count
end