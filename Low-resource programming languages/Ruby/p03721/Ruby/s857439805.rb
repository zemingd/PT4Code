n, k = gets.split.map(&:to_i)
arr = []
count = 0

n.times do
  arr.push gets.split.map(&:to_i)
end

arr.sort_by! { |e| e.first }

0.upto(n-1) do |i|
  count += arr[i].last
  if count >= k
    puts arr[i].first
    break
  end
end
