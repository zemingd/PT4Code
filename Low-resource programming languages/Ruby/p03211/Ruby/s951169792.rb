S = gets.chomp # 文字列として取り出す
FAVARITE = 753
minimum = 10**4
try_count = S.length-2 # S桁の数字から連続した3桁の数字を取り出すパターン数
try_count.times do |i|
  num = S[i..(i+2)]
  diff = (FAVARITE - num.to_i).abs
  minimum = diff if diff < minimum
end
puts minimum
