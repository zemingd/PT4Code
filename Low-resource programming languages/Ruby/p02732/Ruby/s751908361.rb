n = gets.chomp.to_i
arr = gets.chomp.split(" ").slice(0, n).map(&:to_i)

0.upto(n - 1) do |i|
  arr2 = arr.dup
  arr2.delete_at(i)
  counts = {}
  arr2.each do |num|
    if counts[num]
      counts[num] += 1
    else
      counts[num] = 1
    end
  end

  counts.reject!{ |k, v| v == 1 }
  counter = 0
  counts.each do |num, size|
    counter += size * (size - 1) / 2
  end

  puts counter
end
