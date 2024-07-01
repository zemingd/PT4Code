n = gets.chomp.to_i

xy_array = n.times.inject([]) do |acc, i|
  acc[i] = []
  gets.chomp.to_i.times do
    x, y = gets.split.map(&:to_i)
    acc[i] << [x - 1, y == 1]
  end
  acc
end

[true, false].repeated_permutation(n) do |combination|
  result = combination.each_with_index.all? {|c, i| 
    next unless c

    xy_array[i].all? do |xy|
      combination[xy[0]] == xy[1]
    end
  }
  if result
    puts combination.count(true)
    exit
  end
end
