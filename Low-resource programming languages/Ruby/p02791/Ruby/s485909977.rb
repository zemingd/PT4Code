n = gets.to_i

arr = gets.split(' ').map!(&:to_i)

min = arr[0]
count = 0

arr.each do |e|
  if min >= e
    count += 1
    min = e
  end
end

puts count