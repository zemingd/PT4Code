n,m = gets.strip.split.map(&:to_i)
pref = Array.new(n){Array.new}
i = 1
while i <= m do
  p,y = gets.strip.split.map(&:to_i)
  pref[p-1] << [i,y].to_a  #[市の番号,誕生年]
  i += 1
end
#すべて入力完了
#全ての配列を年代順にソート
city = Array.new(m)
j = 0
while j < n do
  unless pref[j] == nil
    pref[j].sort! {|a, b| a[1] <=> b[1] }
    print pref[j]
    k = 0
    while k < pref[j].size do
      city[pref[j][k][0]-1] = ('%012d' % ((j+1)*(10**6)+(k+1)))
      k += 1
    end
  end
  j += 1
end
m.times do |d|
  puts city[d]
end