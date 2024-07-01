n, k = gets.split(" ").map(&:to_i)

array = []
n.times do
  array << gets.chomp.to_i
end

array = array.sort
result = array[k-1] - array[0]

(n - (k-1)).times do |i|
  if array[i+(k-1)] - array[i] < result
    result = array[i+(k-1)] - array[i]
  end
end

puts result
