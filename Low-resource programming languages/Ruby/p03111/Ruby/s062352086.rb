# N本のそれぞれについてA, B, Cのどれかの材料にする或いはどこにも採用しないという4通りをとるとして全探索
# そうしてできた各長さと実際のA,B,Cとの差を取ることで,インクリメント/デクリメントした際のMPはわかる寸法
# 合成したときに10使うところの計算をちゃんとやる
# (↑解説のやつは最初から足しちゃって最後にまとめて引いている)

N, A, B, C = gets.chomp.split.map(&:to_i)
@kadomatsuz = N.times.map{gets.chomp.to_i}

def rec(i, a, b, c)
  if i == N
    return [a, b, c].min > 0 ? (A-a).abs + (B-b).abs + (C-c).abs : 10**10
  end
  x = rec(i+1, a, b, c)
  y = rec(i+1, a+@kadomatsuz[i], b, c) + (a.zero? ? 0 : 10)
  z = rec(i+1, a, b+@kadomatsuz[i], c) + (b.zero? ? 0 : 10)
  w = rec(i+1, a, b, c+@kadomatsuz[i]) + (c.zero? ? 0 : 10)
  return [x, y, z, w].min
end

puts rec(0, 0, 0, 0)