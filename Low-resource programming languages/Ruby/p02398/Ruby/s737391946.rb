ans=0
x,y,a=gets.split.map &:to_i
for i in x..y do
 a%i==0&&ans+=1
end
puts ans
