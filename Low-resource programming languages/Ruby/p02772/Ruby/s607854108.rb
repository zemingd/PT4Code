n = gets.to_i
inputs = gets.split.map(&:to_i)
lists = []
inputs.each do |k|
  lists << k if k % 2 == 0
end
count = 0
lists.each do |i|
  count += 1 if i % 3 == 0 || i % 5 == 0
end
puts count == lists.size ? 'APPROVED' : 'DENIED'
