s=gets.chomp
t=gets.chomp
for i in 0..s.length-1 do
  if s[i]!=t[i] then
    x=s[i]
    for j in 0..s.length-1 do
        if s[j]==t[i] then
          s[j]=x
        elsif s[j]==s[i] then
          s[j]=t[i]
        end
    end
  end
end
if s===t then
  puts "Yes"
else
  puts "No"
end