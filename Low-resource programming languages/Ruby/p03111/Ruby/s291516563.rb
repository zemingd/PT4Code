require 'pp'
# 23, 0, 243
n, a, b, c = gets.split.map &:to_i
l = []
while gg = gets
  l << gg.to_i
end
res = []
[:a,:b,:c,:x].repeated_permutation(n) do |arr|
  aa = bb = cc = 0 # 長さ
  cost = -30
  n.times do |i|
    case arr[i] # 1つ目の竹をどうするか
    when :a # Aの材料
      aa += l[i]
      cost += 10
    when :b # Bの材料
      bb += l[i]
      cost += 10
    when :c # Cの材料
      cc += l[i]
      cost += 10
    when :x # 使わない
    end
  end

  next if [aa,bb,cc].any?{|x|x==0}

  if aa > a # 12, 10
    cost += aa-a
  elsif aa < a
    cost += a-aa
  end

  if bb > b # 12, 10
    cost += bb-b
  elsif bb < b
    cost += b-bb
  end

  if cc > c # 12, 10
    cost += cc-c
  elsif cc < c
    cost += c-cc
  end
  res << [aa,bb,cc,cost]
end
p res.sort_by{|x|-x[3]}[-1][3]
# p [a,b,c]
