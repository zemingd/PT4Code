n,m = gets.split.map(&:to_i)
ks = []
ss = []

m.times do |i|
  ks << gets.split.map(&:to_i) 
  ks[i].shift
  ss += ks[i]
end
ss.sort!.uniq!
p = gets.split.map(&:to_i) 

f = ['on', 'off']
ans = 0
f.repeated_permutation(n).to_a.each do |i|
  flag = true
  ks.each_with_index do |v,l|
    kkk = 0
    v.each do |b|
      if i[b-1] == 'on'
        kkk += 1
      end
    end
    if p[l] != kkk%2
      flag = false
      break
    end
  end

  if flag
    ans += 1
  end
end

puts ans
