#スペース区切りで代入する
a,b,c=gets.chomp.split(" ")
#それぞれの末尾1文字と頭文字1文字を切り出す。
if a[-1,1] == b[0,1] && b[-1,1] == c[0,1]
  puts "YES"
else
  puts "NO"
  
end