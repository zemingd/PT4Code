n, m = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
hash = Hash.new(0)
arr.each do |num|
  hash[num] += 1
end

m.times do
  b, c = gets.chomp.split(' ').map(&:to_i)
  hash[c] += b
end
a = hash.to_a.sort_by { |num, count| -1 * num }
sum = 0
rest_count = n
a.each do |num, count|
  if count >= rest_count
    sum += num * rest_count
    break
  else
    sum += num * count
    rest_count -= count
  end
end
puts sum
