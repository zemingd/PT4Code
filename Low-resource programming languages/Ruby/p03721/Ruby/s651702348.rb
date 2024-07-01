n, k = gets.split.map(&:to_i)
arr = Array.new(n) { gets.split.map(&:to_i) }.sort_by { |(a, _)| a }

def calc(arr, num, idx = 0)
  num - arr[idx][1] <= 0 ? arr[idx][0] : calc(arr, num - arr[idx][1], idx + 1)
end

puts calc(arr, k)