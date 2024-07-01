N = gets.to_i
a = gets.split.map(&:to_i)

box = Array.new(N, 0)

a.reverse[0..(N - 2)].each_with_index do |an, i|
  b = N - i

  v = 0
  (b * 2).step(N, b) do |j|
    v += box[j - 1]
  end

  if an == 1 && v.even?
    box[b - 1] = 1
  elsif an == 0 && v.odd?
    box[b - 1] = 1
  end
end

v = box.inject(:+)

if v == 0 && a[0] == 0
  puts 0
  exit
end

if v.odd?
  if a[0] == 0
    box[0] = 1
    v += 1
  else
    puts '-1'
    exit
  end
else
  if a[0] == 1
    box[0] = 1
    v += 1
  else
    puts '-1'
    exit
  end
end

p v

result = []
box.each_with_index do |d, i|
  result << i + 1 if d == 1
end

puts result.join(' ')