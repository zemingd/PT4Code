n = gets.to_i

h = gets.split(' ').map(&:to_i)

result = [nil, 0]

spaces =
  h.each_with_index.reverse_each do |_, index|
    count = 0

    index.times do |t|
      if h[index - t] <= h[(index - t) - 1]
        count += 1
      else
        break
      end
    end

    if result[0] == nil || count > result[1]
      result = [index, count]
    end
  end

puts result[1]