N = gets.to_i
a = gets.split.map(&:to_i)

cnt = 0
while a.select{ |n| n % 2 == 0 }.max
  max_i = a.index(a.select{ |n| n % 2 == 0 }.max)
  a.each_with_index do |v, i|
    if i == max_i
      a[i] = a[i] / 2
    else
      a[i] = a[i] * 3
    end
  end
  cnt += 1
end

puts cnt