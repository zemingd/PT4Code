N = gets.to_i
caps = gets.split.map(&:to_i)

# すべての組み合わせで排他的論理和を取る
cbs = caps.combination(2)

# 他の帽子と合致するか比較する
ans = 'Yes'
cbs.each do |cb|
  if (caps - cb).select{|cap| cap == (cb[0] ^ cb[1])}.count == 0
    ans = 'No'
    break
  end
end

puts ans
