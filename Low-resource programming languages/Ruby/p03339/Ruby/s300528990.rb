N = gets.to_i
S = gets.chomp.chars

def create_cumulative_sum(arr)
  ret = []
  x = 0
  arr.each do |a|
    ret.push(x)
    x += yield(a)
  end
  ret.push(x)
end

def range_sum(arr, i, j)
  arr[j] - arr[i]
end

E = create_cumulative_sum(S){|c|c=="E" ? 1 : 0}
W = create_cumulative_sum(S){|c|c=="W" ? 1 : 0}

count = 3 * 10 ** 5
N.times do |i|
  c = range_sum(W, 0, i) + range_sum(E, i+1, N)
  count = c if count > c
end

puts count