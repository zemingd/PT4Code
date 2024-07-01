k=gets.chars
a=k[0].to_i
b=k[1].to_i
c=k[2].to_i
d=k[3].to_i
if a+b+c+d==7
  print(a,"+",b,"+",c,"+",d)
elsif a+b+c-d==7
  print(a,"+",b,"+",c,"-",d)
elsif a+b-c+d==7
  print(a,"+",b,"-",c,"+",d)
elsif a+b-c-d==7
  print(a,"+",b,"-",c,"-",d)
elsif a-b+c+d==7
  print(a,"-",b,"+",c,"+",d)
elsif a-b+c-d==7
  print(a,"-",b,"+",c,"-",d)
elsif a-b-c+d==7
  print(a,"-",b,"-",c,"+",d)
else
  print(a,"-",b,"-",c,"-",d)
end
print("=7")