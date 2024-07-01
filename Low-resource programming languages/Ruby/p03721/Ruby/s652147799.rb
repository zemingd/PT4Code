n, k = gets.split.map(&:to_i)
arr = []
n.times do
  ab = gets.split.map(&:to_i)
  ab[1].times do
    arr << ab[0]
  end
end

arr.sort!

puts arr[k-1]
