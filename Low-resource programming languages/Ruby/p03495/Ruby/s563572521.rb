def frequencies(arr)
  buckets = Hash.new { 0 }
  arr.each do |elt|
    buckets[elt] += 1
  end
  buckets
end

n, k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

f = frequencies(arr)
kinds = f.size
ans = 0
f.sort_by { |_,v| v }.each do |_, value|
  if kinds <= k
    break
  end
  ans += value
  kinds -= 1
end
puts ans
