# 文字列 s の連続した一部分(部分文字列という)を取り出して
# 先頭が A であり末尾が Z であるような文字列を作ることにしました。

# s には先頭が A であり末尾が Z であるような
# 部分文字列が必ず存在することが保証されます。

# 作ることのできる文字列の最大の長さを求めてください。
a_s = gets.chomp.split("")
# p a_s

idx_b = -1
idx_e = a_s.size

last_idx = a_s.size-1
mid_idx = last_idx/2

0.upto(mid_idx) do |idx|
  if a_s[idx] == "A" && idx_b == -1
	#p idx
    idx_b = idx
  end
end

last_idx.downto(mid_idx) do |idx|
  if a_s[idx] == "Z" && idx_e == a_s.size
    #p idx
    idx_e = idx
  end
end


puts "#{(idx_e-idx_b)+1}"