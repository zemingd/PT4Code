n,m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
sum = 0
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
  sum += a
end

queue = hash.keys.sort_by{|a| -a}

m.times do |i|
  max = queue.shift
  max_2 = max / 2
  sum -= (max - max_2)

  index = queue.bsearch_index{|a| a <= max_2}

  hash[max_2] ||= 0
  hash[max_2] += 1
  if index.nil? then
    queue << max_2
  elsif queue[index] != max_2 then
    queue.insert(index, max_2)
  end

  hash[max] -= 1
  if hash[max] > 0 then
    queue.unshift(max)
  end
end

puts sum
