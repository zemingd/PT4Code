N = gets.to_i
s = []
count = {}
N.times do |i|
  s[i] = gets.chomp
  if count[s[i]].nil?
    count[s[i]] = 1
  else
    count[s[i]] += 1
  end
end
# countハッシュのvalの最大を求める
max = count.max{|x,y| x[1]<=>y[1]}[1]
# keyの辞書順でソート
count = count.sort

count.each do |val|
  # puts "#{val}"
  if val[1]==max
    puts val[0]
  end
end