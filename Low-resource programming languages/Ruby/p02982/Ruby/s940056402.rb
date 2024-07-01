n, d = gets.chomp.split(' ').map(&:to_i)

arr = []
n.times do
  l = gets.chomp.split(' ').map(&:to_i)
  arr.push(l.to_a)
end

k = arr.length
count = 0
k.times do |i|
  k.times do |j|
    next if i <= j

    tmp = 0
    d.times do |a|
      tmp += (arr[i][a] - arr[j][a])**2
    end

    count += 1 if ((tmp**(1 / 2.0)) % 1).zero?
  end
end
print count
