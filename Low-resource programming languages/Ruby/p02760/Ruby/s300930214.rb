nom=Array.new(9)
nom[0],nom[1],nom[2]=gets.split.map!(&:to_i)
nom[3],nom[4],nom[5]=gets.split.map!(&:to_i)
nom[6],nom[7],nom[8]=gets.split.map!(&:to_i)
n=gets.to_i
ans=0
s=Array.new(n)
for i in 0..n-1
  s[i]=gets.to_i
end
for i in 0..n-1
  for j in 0..8
    if s[i]=nom[j]
      nom[j]="x"
    end
  end
end
if nom[0]=="x" && nom[0]==nom[1] && nom[1]==nom[2]
  ans=1
elsif nom[3]=="x" && nom[3]==nom[4] && nom[4]==nom[5]
  ans=1
elsif nom[6]=="x" && nom[6]==nom[7] && nom[7]==nom[8]
  ans=1
elsif nom[0]=="x" && nom[0]==nom[3] && nom[3]==nom[6]
  ans=1
elsif nom[1]=="x" && nom[1]==nom[4] && nom[4]==nom[7]
  ans=1
elsif nom[2]=="x" && nom[2]==nom[5] && nom[8]==nom[5]
  ans=1
elsif nom[0]=="x" && nom[0]==nom[4] && nom[4]==nom[8]
  ans=1
elsif nom[2]=="x" && nom[2]==nom[4] && nom[4]==nom[6]
  ans=1
end
if ans==1
  puts "Yes"
else
  puts "No"
end
