n, m = gets.chomp.split.map(&:to_i)
arr = Array.new(m, 0)
n.times do
  k = gets.chomp.split.map(&:to_i)
  k[1, k[0]].each do |ki|
    arr[ki-1] += 1
  end
end

count = 0 
arr.each do |ai|
  if ai == n
    count += 1
  end
end

puts count