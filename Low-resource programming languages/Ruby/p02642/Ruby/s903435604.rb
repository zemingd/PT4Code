n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

hash = array.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

ng = {}

new_arr = []
hash.each do |k,v|
  if v == 1
    new_arr.push(k)
  else
    ng[k] = true
    new_arr.push(k)
  end
end

new_arr.sort!

new_n = new_arr.size

ans = 0
new_n.times do |i|
  next if ng[new_arr[i]]
  next_flag = false
  i.times do |j|
    if new_arr[i] % new_arr[j] == 0
      next_flag = true
      break
    end

    if new_arr[j] > new_arr[i]/2
      next_flag = true
      ans += 1
      break
    end
  end
  next if next_flag
  ans += 1
end

p ans
