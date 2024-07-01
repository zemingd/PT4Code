N = gets.to_i
a = gets.split.map(&:to_i)

c = 0
N.times do |i|
  if a[i] != i + 1
    c += 1
  end
end

if c <= 2
  puts 'YES'
else
  puts 'NO'
end
