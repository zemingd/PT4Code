gets.split.map(&:to_i).
  tap { |_, m| break Array.new(m) { gets.split.map(&:to_i) } if true }.
  flatten.
  sort.
  each_with_object([]) { |i, arr| arr[i - 1] = arr[i - 1].nil? ? 1 : arr[i - 1] + 1 }.
  each { |i| puts i}