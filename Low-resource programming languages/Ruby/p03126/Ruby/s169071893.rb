n, m = gets.split.map(&:to_i)
foods = {}
n.times do
  a = gets.split.map(&:to_i)
  k = a.shift
  k.times do |i|
    if foods.include?(a[i])
      foods[a[i]] += 1
    else
      foods[a[i]] = 1
    end
  end
end
count = 0
foods.each_value do |v|
  count += 1 if v == n
end
puts count
