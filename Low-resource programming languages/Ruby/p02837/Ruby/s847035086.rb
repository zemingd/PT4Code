n = gets.to_i
honest = {}  # {n => [人番号, ...]}  n番の人が正直者だと言っている人の番号のリスト
unkind = {}  # {n => [人番号, ...]}  n番の人が不親切だと言っている人の番号のリスト
n.times do |i|
  a = gets.to_i
  honest[i] = []
  unkind[i] = []
  a.times do
    p, f = gets.split.map(&:to_i)
    if f == 1
      honest[i].push(p-1)
    else
      unkind[i].push(p-1)
    end
  end
end

(2**n).times.map{|x| x.to_s(2)}.sort_by{|x| -x.count('1')}.each do |x|
  # x: 2進数で1が正直者、0が不親切
  # 正直者だけを調べて、矛盾がなければOK
  x = x.chars.map(&:to_i)
  hlist = x.each_with_index.select{|c, i| c == 1}.map(&:last) # このパターンでの正直者リスト
  if hlist.all?{|i| honest[i] & hlist == honest[i] && unkind[i] & hlist == []}
    p x.count(1)
    exit
  end
end
