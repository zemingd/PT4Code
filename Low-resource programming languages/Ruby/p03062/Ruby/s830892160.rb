nn = gets.to_i
aa = gets.split.map(&:to_i).sort

max = 0
idx = aa.bsearch_index{|x|x>=0}

if idx.nil?
  # 全部マイナス
  if nn%2==0
    # 全部プラスにできる
    max = -(aa.inject(:+))
  else
    # 1個だけマイナス残る
    b = aa.pop
    max = -(aa.inject(:+)) + b
  end
elsif idx==0
  # マイナスがない
  max = aa.inject(:+)
else
  # マイナスがある
  minus_cnt = aa[0..idx-1].size
  if minus_cnt%2==0
    # 全部プラスにできる
    max = aa.inject{|s,i|s.abs+i.abs}
  else
    # 1こだけマイナス残る
    sorted = aa.sort_by{|a|a.abs}.to_a
    b = sorted.shift
    b=-b if b>0
    max = sorted.inject{|s,i|s.abs+i.abs} + b
  end
end

puts max
