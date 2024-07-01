# frozen_string_literal: true

# pyでやったらなぜかサンプル以外REなったんでrubyで
# よくよく考えたらREなるの当たり前の実装だったわ

# ロジックは間違ってなかったのでお察し

# ↑いうてWAだったのでもうめんどくさいのでbreakしないことにした

N = gets.chomp.to_i
h = {}
gets.chomp.split.map(&:to_i).each do |i|
  if h.key?(i)
    h[i] += 1
  else
    h[i] = 1
  end
end

# h = h.sort_by { |k, _v| k }.reverse もうええわ
imtwo = []
imfour = []

h.each do |k, v|
  if imfour.empty? && v >= 4
    imfour << k
  elsif imtwo.size < 2 && v >= 2
    imtwo << k
  end
end

ans = 0
if imfour.size == 1 && imtwo.size == 2
  ans = [imfour[0]**2, imtwo.inject(:*)].max
else
  if imfour.size == 1
    ans = imfour[0]**2
  elsif imtwo.size == 2
    ans = imtwo.inject(:*)
  end
end
puts ans
