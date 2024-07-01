def hantei(num)
  num >= 1 && num <= 12
end

S = STDIN.gets.chomp

# 正規表現で前からx文字を切り出す
# 正規表現より前のもの, ()でくくった正規表現, 残ったものに分割
f, b = S.split(/\A(.{1,2})/, 2)[1..-1].map(&:to_i)

if !hantei(f) && hantei(b) then
  puts "YYMM"
elsif hantei(f) && !hantei(b)
  puts "MMYY"
elsif hantei(f) && hantei(b)
  puts "AMBIGUOUS"
else
  puts "NA"                                                             
end