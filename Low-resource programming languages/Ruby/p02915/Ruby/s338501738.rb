line = gets.split(' ').map(&:to_i)

n = line[0]
k = line[1]
s = gets.split('')

start = 0
for i in 0..n-2
  if s[i] == s[i+1] then
    start += 1
  end
end

value = 2 * k + start
if value > n-1 then
  value = n-1
end

p value
