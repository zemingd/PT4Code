n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!
puts a
x = 0
for i in 0..(n-2)
  if a[i] == a[i+1]
    x = 1
    puts "NO"
    break
  end
end

puts "YES" if x == 0