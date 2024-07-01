N = gets.to_i

dic = {}
N.times do |i|
  s, point = gets.chomp.split
  unless dic[s]
    dic[s] = []
  end
  dic[s] << [i+1, point.to_i]
end

dic.keys.sort.each do |k|
  dic[k].sort_by! do |d|
    d[1]
  end
  dic[k].reverse.each do |d|
    p d[0]
  end
end