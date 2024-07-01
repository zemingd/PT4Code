N = gets.to_i

# 1! ～ (N-1)! までを計算する
$kai = [1]
(N-2).times do |i|
  $kai.unshift($kai[0] * (i+2))
end
#p $kai

A = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)

def n_banme(x)
  indexes = []
  N.times do |i|
    indexes << i+1
  end
  #print 'indexes = '
  #p indexes
  #p x
  ans = 0
  
  (N-1).times do |i|
    # puts 'i = '+ i.to_s
    # 順番未確定の数値のなかで何番目に大きいか
    idx = indexes.index(x[i])
    # puts 'idx = ' + idx.to_s
    ans += idx * $kai[i]
    # puts 'ans = '+ ans.to_s
    indexes.delete_at(idx)
  end
  ans += 1
  # puts 'final_ans = '+ans.to_s
  return ans
end

a = n_banme(A)
b = n_banme(B)
# puts a,b
puts (a-b).abs