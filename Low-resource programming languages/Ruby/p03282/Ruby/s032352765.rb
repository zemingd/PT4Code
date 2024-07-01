gosen = 5 * 10**15

S = gets.chomp
K = gets.to_i
vec = S.chars.map do |c|
  c.to_i
end

sum = vec.map do |v|
  v * gosen
end

now = 0
ans = 0
count = 0
sum.each do |s|
  now +=s
  if K < now
    ans = vec[count]
    break
  end
  count += 1
end
p ans