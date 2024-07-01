n, k, q = gets.chomp.split.map(&:to_i)
a = []
q.times do |i|
  a[i] = gets.chomp.to_i
end

count = Array.new(n, 0)
a.each do |aa|
  count[aa-1] += 1
end

min = q - k + 1
n.times do |i|
  if count[i] >= min
    puts 'Yes'
  else
    puts 'No'
  end
end
