# s を一文字ずつ ord で文字コードに変換して n 分足し chr で文字列に元に戻し出力
# A..Z(65..90)

n = gets.to_i
s = gets.chomp.chars
ans = []

s.each do |i|
  if (i.ord + n) >= 91
    ans << (i.ord + n - 26).chr
  else
    ans << (i.ord + n).chr
  end
end

puts ans.join