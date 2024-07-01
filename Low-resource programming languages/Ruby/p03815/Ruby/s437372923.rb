pt = gets.chomp.to_i
a = pt/11
b = pt%11
if b==0
print a*2
elsif b<7
print a*2+1
else
print a*2+2
end