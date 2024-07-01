_n, m = gets.split.map(&:to_i)
data = Hash.new{|h, k| h[k] = []}
m.times do |i|
  p, y = gets.split.map(&:to_i)
  data[p] << [i, y]
end
arr = Array.new(m)
data.each do |k,v|
  v.sort_by{|tmp| tmp[1]}.each_with_index do |tmp, i|
    arr[tmp[0]] = [k, i+1]
  end
end
arr.each do |v|
  puts format("%06d%06d", v[0], v[1])
end
