#スペース区切りで代入する
a,b,c=gets.chomp.split(" ")
#それぞれの末尾1文字と頭文字1文字を切り出す。
al = a[-1,1]
bs = b[0,1]
bl = b[-1,1]
cs = c[0,1]
# p al
#p bs
#p bl
#p cs

if al == bs && bl == cs
  puts "YES"
else
  puts "NO"
  
end