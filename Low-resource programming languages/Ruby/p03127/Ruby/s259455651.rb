n = gets.to_i
a = gets.split.map(&:to_i)
h = {}
f = true
n.times do |i|
  h[a[i]] = 1
  f = false if a[i].odd?
end
if h.size == 1
  puts a[0]
  exit
elsif f
  puts 2
else
  puts 1
end