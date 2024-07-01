def func(arr)
  prev = 1
  minus_count = 0

  arr.each do |n|
    if n == 0
      return 0
    end

    if n < 0
        minus_count += 1
    end
  end

  arr.each do |n|
    if Math.log10(prev) + Math.log10(n.to_i) >= 18
      if n * prev == 10 ** 18
        return 10 ** 18
      end

      return -1
    end
    
    prev = n * prev
  end

  prev
end

lines = []
2.times do
    line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

num = lines[0]

puts func(lines[1])