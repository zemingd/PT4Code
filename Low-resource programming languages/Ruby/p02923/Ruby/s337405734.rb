n = gets.to_i

h = gets.split(' ').map(&:to_i)

result = [nil, 0]

spaces =
  n.times do |index|
    index = n - (index + 1)
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