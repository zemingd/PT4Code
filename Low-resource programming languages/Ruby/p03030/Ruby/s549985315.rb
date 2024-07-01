N=gets.to_i
res = {}
N.times do |i|
  s,pp = gets.split
  if res[s] == nil
    res[s] = []
  end
  res[s] << [i+1, pp.to_i]
end
names = res.keys
names.sort!
names.each do |name|
  a = res[name].sort_by{|seq| -seq[1]}
  a.each do |ai|
    puts ai[0]
  end
end
