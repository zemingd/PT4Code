n_m = gets
n_m = n_m.split(" ")
n = n_m[0].to_i
ank = []

n.times do
  oneperson = gets
  oneperson = oneperson.split(" ").map{|onedata| onedata.to_i }
  oneperson.shift
  ank << oneperson
end

ank = ank.map{|onedata| onedata.uniq}

tmp = []


nextary = []


#全ての配列に一つでも含まれているものを抽出する。
ank.each do|one|
  one.each do|data|
    if tmp.include? data
    else
      tmp << data
    end
  end
end

#全体配列を見て
ank.each do|one|
  nextary = []
  one.each do|data|
    #含まれていないなら、次の配列の候補へぶっこむ
    if tmp.include? data
      nextary << data
    end
  end
  tmp = nextary
end

puts tmp.size.to_s