n, d = gets.chomp.split(' ').map(&:to_i)
list = []
count = 0

n.times do
  list << gets.chomp.split(' ').map(&:to_i)
end

(n-1).times do |i|
  pop = list[i]
  (i..(n-1)).each do |j|
    pop2 = list[j]
    sum = 0
    d.times do |k|
      sum += ((pop[k] - pop2[k]) ** 2)
    end
	sum = (sum**(1/2.0))
	if sum.to_i.to_f == sum && sum.to_i >= 1
      count += 1
    end
  end
end

print count