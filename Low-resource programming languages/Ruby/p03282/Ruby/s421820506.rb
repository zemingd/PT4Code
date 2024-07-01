def calc(a,b)
  r = 1
  if a==1 then
    return 1
  else
    (2..b).each do
      r *= a
    end
    return r
  end
end

gochou = 5000000000000000
moji = gets.chomp
K = gets.to_i

if moji.length==1 then
  puts moji
else
  kai = 0
  (moji.length).times do |i|
    kai += moji[i].to_i * gochou
    if kai >= K then
      puts moji[i]
      exit
    end
  end
end