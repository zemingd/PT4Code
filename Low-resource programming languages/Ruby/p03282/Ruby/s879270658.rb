s=gets
k=gets.to_i
arr=[]
s.chars{|ch| arr<<ch.to_i}
if k<=arr.index{|v| v!=1}-1 || arr.index{|v| v!=1}==nil
  puts 1
else
  puts arr[arr.index{|v| v!=1}]
end

