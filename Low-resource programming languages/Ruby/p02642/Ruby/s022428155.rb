n = gets.to_i
a = gets.split(' ').map { |item| item.to_i }

b = a.sort

cnt1 = [0] * ((10 ** 6) + 1)

b.each do |elem|
  cnt1[elem] += 1
end

uniq1 = []

for i in 1..((10 ** 6) + 1)
  uniq1.push(i) if cnt1[i] == 1
end

cnt2 = [0] * ((10 ** 6) + 1)

b.each do |elem|
  tmp = elem * 2
  while tmp < 10 ** 6 + 1 do
    cnt2[tmp] = 1
    tmp += elem
  end
end

ans = 0

uniq1.each do |elem|
  if cnt2[elem] == 0
    ans += 1
  end
end

puts ans