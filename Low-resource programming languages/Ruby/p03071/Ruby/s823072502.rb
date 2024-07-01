/n,a,b=gets.split.map(&:to_i)/
/.sort/
/S = gets.chomp.chars/
a,b=gets.split.map(&:to_i)
count=0
i=0
while i<2
  if(a>=b)
    count+=a
    a-=1
  else
    count+=b
    b-=1
  end
  i+=1
end
puts count