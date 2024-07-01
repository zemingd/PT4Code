S = gets.to_i
K = gets.to_i
 
ret = 0
idx = 0
S.to_s.split('').each do |s|
  ret = s
  hoge = s.to_i**(5*(10**15)) 
  idx += hoge
  if Math.log(idx) >= Math.log(K)
    break
  end
end
p ret.to_i