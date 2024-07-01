n, m = gets.split(' ').map(&:to_i)
arr = []
n.times do
  arr.push(gets.chomp.split(' ').map(&:to_i))
end
arr.sort_by! { |i| -i[1] }
sum = 0
(0..m).each do |i|
  delete_target = nil
  arr.each_with_index do |v, j|
    if v[0] <= i
      sum += v[1]
      delete_target = j
      break
    end
  end
  next if delete_target.nil?
  arr.delete_at(delete_target)
end
puts sum