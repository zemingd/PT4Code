N,*as=$<.read.split.map(&:to_i)

arr = Array.new(N+1,0)
as.each do |a|
  arr[a] += 1
end

sum = arr.map {|n| n * (n-1) / 2 }.inject(&:+)

as.each do |a|
  p sum - (arr[a]-1)
end

