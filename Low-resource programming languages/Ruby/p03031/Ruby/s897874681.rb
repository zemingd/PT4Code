n,m = gets.chomp.split.map(&:to_i)
ks = m.times.map{gets.chomp.split.map(&:to_i)}
ps = gets.chomp.split.map(&:to_i)
combi = [0,1].repeated_permutation(n).to_a
cnt = 0
ans = 0
flag = true
combi.each do |c|
  ks.each_with_index do |k,i|
    break if !flag
    size = k[0]
    (1..size).each do |j|
      cnt += c[k[j]-1]
    end
    if !(cnt%2 == ps[i])
      flag = false
      cnt = 0
      break
    else
      cnt = 0
    end
  end
  if flag
    ans += 1
  else
    flag = true
  end
end
puts ans

