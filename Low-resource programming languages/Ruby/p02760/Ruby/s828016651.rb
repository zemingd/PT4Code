nom Array.new(3) { Array.new(3,0) }
nom[0][0],nom[0][1],nom[0][2]=gets.split.map!(&:to_i)
nom[1][0],nom[1][1],nom[1][2]=gets.split.map!(&:to_i)
nom[2][0],nom[2][1],nom[2][2]=gets.split.map!(&:to_i)
n=gets.to_i
ans=0
s=Array.new(n)
for i in 0..n-1
  s[i]=gets.to_i
  for j in 0..2
      for k in 0..2
    if s[j][k]==nom[i]
      nom[j][k]="x"
    end
  end
end
for i in 0..3
  if nom[0][i]=="x" || nom[1][i]=="x" || nom[2][i]=="x"
    ans=1
  elsif nom[i][0]=="x" || nom[i][1]=="x" || nom[i][2]=="x"
    ans=1
  end
end
if nom[0][0]=="x" && nom[1][1]=="x" && nom[2][2]=="x"
  ans=1
elsif nom[0][2]=="x" && nom[1][1]=="x" && nom[2][0]=="x"
  ans=1
end
if ans==1
  puts "Yes"
else
  puts "No"
end
