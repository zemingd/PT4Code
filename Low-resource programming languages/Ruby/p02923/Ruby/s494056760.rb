n = gets.to_i

h = gets.split(' ').map(&:to_i)

spaces =
  h.each_with_index.map do |hi, idx|
    n_idx = (n - 1) - idx

    count = 0
    (n_idx).times do |t|
      if h[idx + t] >= h[n - (n_idx - t)]
        count += 1
      else
        break
      end
    end

    [idx, count]
  end

puts spaces.reduce([0, 0]) { |result, space|
  if result[1] < space[1]
    result = space
  else
    result
  end
}[0]
