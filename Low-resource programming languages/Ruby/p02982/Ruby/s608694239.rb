n, d = gets.split.map(&:to_i)

res = 0
i = 0
arr = Array.new(n).map{|i| i = gets.split.map(&:to_i)}
while i < n
  if i < n - 1
    res += 1 if (Math.sqrt((arr[i][0] - arr[i+1][0]) ** 2 + (arr[i][1] - arr[i+1][1]) ** 2)).to_s.chars.count < 10
  else i == n - 1
    res += 1 if (Math.sqrt((arr[i][0] - arr[0][0]) ** 2 + (arr[i][1] - arr[0][1]) ** 2)).to_s.chars.count < 10
  end
  i += 1
end

puts res