n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!
h = {}
f = (a[0].odd?)?false:true
1.upto(n - 1) do |i|
  h[a[i] % a[0]] = 1
  f = false if a[i].odd?
end
if h.size == 1 && a.size > 2
  puts a[0]
  exit
elsif f
  puts 2
else
  puts 1
end