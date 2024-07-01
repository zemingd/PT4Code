n = gets.to_i
a = gets.chomp.split(" ", n).map(&:to_i)

if a.length == a.uniq.length
  ans = a.map{|_| 0}
  print "#{ans.join("\n")}\n"
  exit
end

b = a.group_by{|i| i}.
  map{|j| [j[0], j[1].length]}.to_h

combi = Hash.new
b.each do |k, v|
  if !combi.has_key? v
    combi[v] = v * (v - 1) / 2
  end
  if !combi.has_key? v - 1
    combi[v-1] = (v - 1) * (v - 2) / 2
  end
end

aa = Hash.new
b.each do |k, _|
  num = 0
  b.each do |kk, vv|
    if k == kk
      num += combi[vv - 1]
    else
      num += combi[vv]
    end
  end
  aa[k] = num
end

ans = a.map{|i| aa[i]}

print "#{ans.join("\n")}\n"