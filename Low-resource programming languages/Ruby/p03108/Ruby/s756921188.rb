def combi(n, r)
  result = 1
  hoge = [n, n-r].min

  hoge.times do |i|
    result *= (n - i)
    result /= (i + 1)
  end
  return result
end

n,m = gets.split.map &:to_i

a = []
b = []

c = []
d = []

m.times do |i|
  a[i],b[i] = gets.split.map &:to_i
  c[i] ||= []
  c[i] << b[i]
  d[i] ||= []
  d[i] << a[i]
end

sum = 0
group_number = {}

groups = []

group_size = 0

point = []

target = combi(n, 2)

m.times do |i|
  ai = a[-i-1]
  bi = b[-i-1]
  if !group_number[ai] && !group_number[bi]
    #どのグループにも属してない場合は新規グループ
    groups[group_size] = [ai, bi]
    group_number[ai] = group_size
    group_number[bi] = group_size
    group_size += 1
    
    sum += 1
  elsif group_number[ai] && !group_number[bi]
    # a側だけ存在してたらa側にbを入れる
    groups[group_number[ai]] << bi
    group_number[bi] = group_number[ai]
    
    sum += (groups[group_number[ai]].size - 1)
  elsif !group_number[ai] && group_number[bi]
    # b側だけ存在してたらb側にaを入れる
    groups[group_number[bi]] << ai
    group_number[ai] = group_number[bi]

    sum += (groups[group_number[bi]].size - 1)
  elsif group_number[ai] == group_number[bi]
    # 両方同じグループの時は何もおこらない
  else
    # 2つのグループが合流する
    size_a = groups[group_number[ai]].size
    size_b = groups[group_number[bi]].size
    
    groups[group_number[ai]] += groups[group_number[bi]]
    groups[group_number[bi]].each do |i|
      group_number[i] = group_number[ai]
    end

    sum += size_a * size_b
  end
  point[m-i-1] = target - sum
end



1.upto(m-1) do |i|
  puts point[i]
end
puts target