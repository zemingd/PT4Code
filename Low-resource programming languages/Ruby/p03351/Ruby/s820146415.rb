a, b, c, d = gets.chomp.split.map(&:to_i)

if (a - b).abs && (b - c).abs < d　## 入力例 3 で気づかないとダメ
  puts "Yes"
elsif (a - c).abs < d  ## a - c の絶対値も d 以下ならば
  puts "Yes"
else
  puts "No"  ## それ以外
end