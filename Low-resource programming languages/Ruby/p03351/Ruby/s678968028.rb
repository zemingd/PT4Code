a,b,c,d = gets.split.map(&:to_i)
if(c>a)
  e = c-a
else
  e = a-c
end

if((e<=d)||(((b-a)<=d)&&((c-b)<=d))&&(b<c)&&(a<b))
  puts 'Yes'
else
  puts 'No'
end
