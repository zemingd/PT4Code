n, k = gets.split(" ").map(&:to_i)

arr = []

n.times do
  a, b = gets.split(" ").map(&:to_i)

  b.times do
    arr.push(a)
  end
end

sorted = arr.sort

puts sorted[k-1]