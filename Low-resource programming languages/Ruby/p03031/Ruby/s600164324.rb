n, m = gets.chomp.split(' ').map(&:to_i)

connect_arr = []
m.times do |i|
  a = gets.chomp.split(' ').map(&:to_i)
  connect_arr[i] = a[1..a.size]
end
p_arr = gets.chomp.split(' ').map(&:to_i)

sum = 0
(2 ** n).times do |i|
  success = true
  switch_arr = format("%0#{n}d", i.to_s(2).to_i).split('').map(&:to_i)
  connect_arr.each_with_index do |arr, i|
    s = 0
    arr.each do |num|
      s += switch_arr[num-1]
    end
    if s % 2 != p_arr[i]
      success = false
      break
    end
  end
  sum += 1 if success
end
puts sum
