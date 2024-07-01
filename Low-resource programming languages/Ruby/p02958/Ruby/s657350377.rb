# /bin/ruby
n = gets().to_i
ary = gets.split(' ').map do |e|
  e.to_i
end

c = 0
ary.each_with_index do |e, i|
  c += 1 if e != i + 1
end

if c == 0 or c == 2
  puts "YES"
else
  puts "NO"
end
