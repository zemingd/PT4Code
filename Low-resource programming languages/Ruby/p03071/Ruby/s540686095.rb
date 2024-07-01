/n,a,b=gets.split.map(&:to_i)/
/.sort/
/S = gets.chomp.chars/
a,b=gets.split.map(&:to_i)
count=0
count+=[a,b].max
if(a>b)
  a=a-1
elsif(b<a)
  b=b-1
end
count+=[a,b].max
puts count
