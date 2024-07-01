tmp = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
n, m, k = tmp[0], tmp[1], tmp[2]

answer = 0
total = 0
i = 0
j = 0

while total < k  do
  if i >= n && j >= m
    break
  elsif i >= n
    total += b[j]
    answer += 1
    j += 1
  elsif j >= m
    total += a[i]
    answer += 1
    i += 1
  elsif a[i] >= b[j]
    break if i == 0 && a[i] > k

    total += a[i]
    answer += 1
    i += 1
  elsif a[i] <= b[j]
    break if j == 0 && b[j] > k

    total += b[j]
    answer += 1
    j += 1
  end
end

puts answer