n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
(1..n).each do |i|
  unless a[i-1] == i
    count += 1
  end
end

if count == 0
  puts "YES"
  exit
end

if count == 2
  puts "YES"
  exit
end

puts "N0"