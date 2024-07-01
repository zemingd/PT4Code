input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

tmp

if a>b
  tmp=a
  a=b
  b=tmp
  if b>c
    tmp=b
    b=c
    c=tmp
    if a>b
       tmp=a
       a=b
       b=tmp
     end
  end
end