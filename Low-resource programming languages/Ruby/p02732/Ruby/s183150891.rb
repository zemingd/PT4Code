def comb2(n)
  return 0 if n < 2
  return n*(n-1)/2
end

n = gets.to_i
a = gets.split.map(&:to_i)

sum = 0
bs = Hash.new(0)
a.each{|an| bs[an] += 1}
bs.each do |k,v|
  sum += comb2(v) if v >= 2
end

for i in 0..(n-1)
  if bs[a[i]] >= 2
    puts sum - comb2(bs[a[i]]) + comb2(bs[a[i]]-1)
  else
    puts sum
  end
end