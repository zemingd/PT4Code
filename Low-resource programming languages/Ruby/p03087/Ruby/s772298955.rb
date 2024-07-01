n,q = gets.split().map(&:to_i)
s = gets.chomp
lr = q.times.map{gets.split().map(&:to_i)}

count = []
count[0] = 0
(1..n-1).each do |i|
  if s[i-1..i] == "AC" then
    count[i] = count[i-1] + 1
  else
    count[i] = count[i-1]
  end
end
p count
lr.each do |l,r|
  p count[r-1] - count[l-1]
end