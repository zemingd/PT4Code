n = gets.chomp.to_i
hash = {}
n.times do
  a,b = gets.chomp.split(' ').map(&:to_i)
  hash[b] ? hash[b] += a : hash[b] = a
end

memo = 0
hash.sort.each do |arr|
  memo += arr[1]
  if (memo > arr[0])
    puts 'No'
    exit
  end
end
puts 'Yes'