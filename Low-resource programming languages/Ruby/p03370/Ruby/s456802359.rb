n,x=gets.split(" ").map(&:to_i)
m = Array.new()
i = 0
while i < n
  m.push(gets.to_i)
  i += 1
end

mini = m[0]
for j in 1..n-1
  if m[j] < mini
    mini = m[j]
  end
end

sum = 0
for j in 0..n-1
  sum += m[j]
end

goukei = (x - sum) / mini + n - 1
puts goukei
