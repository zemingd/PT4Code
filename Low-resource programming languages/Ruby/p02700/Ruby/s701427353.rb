a,b,c,d=gets.split.map &:to_i
# 耐えられる回数は高橋がA/D
# 青木がC/B
if (a.to_f/d).ceil>=(c.to_f/b).ceil then
  puts "Yes"
else
  puts "No"
end
