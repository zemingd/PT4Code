nm = STDIN.gets.chomp.split(' ').map(&:to_i)

a = STDIN.gets.chomp.split(' ').map(&:to_i)

inputs = []
nm[1].times do
  inputs << STDIN.gets.chomp.split(' ').map(&:to_i)
end

a.sort!
inputs.each do |array|
  next if a[0] > array[1]
  (1..array[0]).each do |i|
    break if a[i-1] > array[1]
    a[i-1] = array[1]
  end
  a.sort!
end

puts a.sum
