# frozen_string_literal: true

# pyでやったらなぜかサンプル以外REなったんでrubyで
# よくよく考えたらREなるの当たり前の実装だったわ

# ロジックは間違ってなかったのでお察し

N = gets.chomp.to_i
h = {}
gets.chomp.split.map(&:to_i).each do |i|
  if h.key?(i)
    h[i] += 1
  else
    h[i] = 1
  end
end

h = h.sort_by { |k, _v| k }.reverse
imtwo = []
imfour = []
ans = 0

h.each do |k, v|
  if v < 2
    next
  elsif  imfour.empty? && v >= 4
    imfour << k
  elsif imtwo.size < 2 && v >= 2
    imtwo << k
  end

  if imtwo.size == 2
    ans = imtwo.inject(:*)
    break
  elsif imfour.size == 1
    ans = imfour[0] * 2
    break
  end
end

puts ans
