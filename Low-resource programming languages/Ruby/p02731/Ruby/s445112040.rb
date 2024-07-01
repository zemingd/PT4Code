l = gets.to_i
a = []

3.times do |i|
  a << l/3
end

if l-a.inject(:+) != 0
  l-a.inject(:+).times do |i|
   a[0] += 1
   a.sort!
  end
end
puts a.inject(:*)