while (m,f,r=gets.split.map &:to_i)!=[-1,-1,-1]
m==-1?m=0:m
f==-1?f=0:f
s=m+f
puts"A" if 79<s
puts"B" if 64<s&&s<80
puts"C" if (49<s&&s<65)||(29<s&&s<50&&49<r)
puts"D" if 29<s&&s<50
puts"F" if s<30
end