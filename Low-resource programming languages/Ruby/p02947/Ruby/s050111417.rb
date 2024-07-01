N = gets.to_i
str =[]
N.times do
  str << gets.split('').sort.join()
end

count = []
ans = 0

str.uniq.each do |s|
  count << str.count(s)
end

count.each do |num|
  ans += num*(num-1)/2
end

puts ans