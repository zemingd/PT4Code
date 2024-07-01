# Your code here!

#データの読み込み

fline=readlines
input=fline[0].split(" ")

#実際の処理

a=input[0].to_i
b=input[1].to_i

ans=a+b
temp=a-b
if ans<temp then
    ans=temp
end
temp=a*b
if ans<temp then
    ans=temp
end

#出力

printf('%d', ans)



