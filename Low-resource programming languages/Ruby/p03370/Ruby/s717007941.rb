n, x = gets.chomp.split(" ").map(&:to_i)
m=[]
cnt=0
for i in 0...n do
  input=gets.to_i
  m.push(input)
  x-=input
  cnt+=1
end
cnt+=x/m.min
p cnt
