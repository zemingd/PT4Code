# 2
# i番目のパンと残りの粉materialグラムで深さ優先探索
def recurse(i, material, n, req_materials)
  # 作れるパンが存在しない場合
  return 0 if i == n

  # 粉にあまりがあるがi番目のパンが製造できない場合
  return recurse(i + 1, material, n, req_materials) if req_materials[i] > material

  # パンを製造できるが製造せず次に進む場合
  # パンを製造して次に進む場合
  # - この場合製造個数を一つ増やす
  [recurse(i + 1, material, n, req_materials),
   1 + recurse(i, material - req_materials[i], n, req_materials)].max
end

# inputs ...
n, x = gets.chomp!.split(' ')
n = n.to_i
x = x.to_i
req_materials = []
n.times { req_materials << gets.chomp!.to_i }

# あらかじめ最低ひとつずつ製作しておく
req_materials.each do |rm|
  x -= rm
end

puts n + recurse(0, x, n, req_materials)
