a=[]
5.times do
  a.push gets.chomp.to_i
end

min = a.first
minp = 0
a.each_with_index do |e, i|
  if min%10 > e%10 && e%10 != 0
    min = e
    minp = i
  end
end

ans = min
a.delete_at(minp)
a.each do |e|
  if e % 10 == 0
    ans += e
  else
    num = e.to_s
    num[-1] = '0'
    ans += num.to_i + 10
  end
end

puts ans