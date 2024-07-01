n,q = $stdin.gets.split.map(&:to_i)
s = $stdin.gets.chomp
result = []
count = 0

result[0] = 0
(1..n).each do |i|
  if s[i-1]=='A' && s[i]=='C'
    count += 1
  end
  result[i] = count
end
q.times do
  l,r = $stdin.gets.split.map(&:to_i)
  puts result[r-1]-result[l-1]
end
