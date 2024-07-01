while true do
  ans=0
  str=gets.chomp
  number=str.split
  num=Array.new(3)
  num[0]=number[0].to_i
  num[2]=number[2].to_i
  if number[1]=='+' then
    ans=num[0]+num[2]
  elsif number[1]=='-' then
    ans=num[0]-num[2]
  elsif number[1]=='*' then
    ans=num[0]*num[2]
  elsif number[1]=='/' then
    ans=num[0]/num[2]
  elsif number[1]=='?' then
    break
  end
  puts ans
end