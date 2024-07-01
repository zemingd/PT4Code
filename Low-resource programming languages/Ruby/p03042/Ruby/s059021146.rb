S=gets.chomp
s1=S[0..1].to_i
s2=S[2..3].to_i

a=false
b=false
if s1<=12 && s1>0 then
  a=true
end
if s2<=12 && s2>0 then
  b=true
end

if a && b then
  puts 'AMBIGUOUS'
elsif !a && b
  puts 'YYMM'
elsif a && !b
  puts 'MMYY'
else
  puts 'NA'
end