# -*- coding: utf-8 -*-

def foo 開始位置, 移動回数, 単位
  最適回数, 余り距離 = 開始位置.abs.divmod 単位
  if 単位 - 余り距離 < 余り距離
    余り距離 = 単位 - 余り距離
    最適回数 += 1
  end

  超過回数 = 移動回数 - 最適回数
  if 超過回数 <= 0
    (開始位置.abs - 移動回数 * 単位).abs
  else
    if 超過回数.even?
      余り距離
    else
      [
        (余り距離 + 単位).abs,
        (余り距離 - 単位).abs,
      ].min
    end
  end
end

puts foo(*gets.split.map(&:to_i))
