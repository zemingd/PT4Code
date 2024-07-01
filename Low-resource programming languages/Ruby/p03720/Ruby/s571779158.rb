n, m = gets.chomp.split.map(&:to_i)
arr = Array.new(n, 0)
m.times{
    a, b = gets.chomp.split.map(&:to_i)
    arr[a - 1] += 1
    arr[b - 1] += 1
}
puts arr