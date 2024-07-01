a,b,c,d=gets.split.map &:to_i
# 耐えられる回数は高橋がA/D
# 青木がC/B
if (a/d).ceil>=(c/b).ceil then
  puts "No"
else
  puts "Yes"
end
