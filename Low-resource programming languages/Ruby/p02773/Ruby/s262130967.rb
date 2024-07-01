# N
# S1
# SN
# 書かれた文字列が多いものを出力
# 全部違うときは全部出力

N = gets.to_i
hash = Hash.new(0)
cnt = 0

N.times do
  s = gets.chomp
  hash[s] += 1
  if hash[s] > cnt
    cnt = hash[s]
  end
end

puts hash.select{|key,value| value==cnt}.keys.sort


  