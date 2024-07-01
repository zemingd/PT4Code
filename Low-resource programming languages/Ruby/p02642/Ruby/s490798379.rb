input = defined?(DATA) ? DATA : STDIN

_ = input.gets.to_i
list = input.gets.split(' ').map(&:to_i).sort

hash = {}
list.each do |a|
  if hash[a].nil?
    hash[a] = true
  else
    hash[a] = false
  end
end

list2 = hash.keys
status = hash.values

list2.each_with_index do |a, i|
  next if status[i].nil?
  a_x2 = a * 2
  ((i + 1)...list2.size).each do |j|
    next unless status[j]
    b = list2[j]
    next if b < a_x2
    if b % a == 0
      status[j] = nil
    end
  end
end

puts status.count { |s| s }