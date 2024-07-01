S=gets.chars
x="ACGT"
s=0
p S.inject(0){|m,i|x.include?(i)?s+=1:s=0;[m,s].max}