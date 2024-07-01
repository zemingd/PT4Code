a = gets.split(' ').map!(&:to_i)
puts a[0] if a[1] == 0

b = gets.split(' ').map!(&:to_i)

hyou = Array.new(100)
for i in 0..hyou.length
  hyou[i] = i
end


b.each do |i|
  hyou.delete(i) if hyou.include?(i)
end

min = 100
for i in 0..hyou.length - 1
  if (hyou[i] - a[0]).abs < min
    min = (hyou[i] - a[0]).abs
    ans = i
  end
end

puts hyou[ans]