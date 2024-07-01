A,B,C=gets.split.map(&:to_i)
ans=0
if(A==B && A!=C)
  puts "Yes"
else if(B==C && B!=A)
  puts "Yes"
else if(C==A && C!=B)
  puts "Yes"
else
  puts "No"
end
