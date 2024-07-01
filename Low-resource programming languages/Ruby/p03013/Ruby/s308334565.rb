n,m = gets.split.map(&:to_i)
ary = [-1]*(n+1)
ary[0],ary[1] = 1,1
m.times do |i|
  ary[gets.to_i] = 0
end

(2..n).each do |i|
  if ary[i] == -1
    ary[i] = ary[i-1]+ ary[i-2]
  end
end

puts ary[n] % 1000000007