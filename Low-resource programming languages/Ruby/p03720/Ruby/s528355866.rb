n, m = gets.split.map(&:to_i)
arr = Array.new(n) { 0 }
m.times do
  a, b = gets.split.map { |x| x.to_i - 1 }
  arr[a] += 1
  arr[b] += 1
end

arr.each(&method(:puts))