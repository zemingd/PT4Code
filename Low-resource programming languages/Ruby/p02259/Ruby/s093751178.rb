def bubble_sort(data)
  num_swapped = 0
  begin
    swapped = false
    1.upto(data.size - 1) { |i|
      if data[i] < data[i - 1]
        data[i], data[i - 1] = data[i - 1], data[i]
        num_swapped += 1
        swapped = true
      end
    }
  end while swapped
  [data, num_swapped]
end

data = STDIN.read.lines[1].split("\s").map(&:to_i)
sorted, num_swapped = bubble_sort(data)
puts sorted.join(' ')
puts num_swapped