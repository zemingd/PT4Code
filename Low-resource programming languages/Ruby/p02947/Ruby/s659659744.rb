class Integer
  # 階乗
  def !
    (1..self).inject(1, :*)
  end
end

# 組み合わせの数
def combination(n, k)
  (n.!) / (k.! * (n - k).!)
end

# 各行の文字列を文字に分割してソートして、
# 同一文字列毎に組み合わせ数を求める
n = gets.to_i
h = Hash.new{|h,k| h[k] = 0}
n.times.each do
  h[gets.chomp.chars.sort] += 1
end
ans = h.values.inject(0) do |x, v|
  x += combination(v, 2)
end
p ans
