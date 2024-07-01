N,*as=$<.read.split.map(&:to_i)

as.unshift(0)
arr = [0] * (N+1)
i = as.length-1
while 1 <= i
  b = 0
  (i*2).step(N,i) do |j|
    b ^= arr[j]
  end
  arr[i] = b ^ as[i]
  i -= 1
end

sum = 0
ret = []
arr.each.with_index do |a,i|
  if a == 1
    sum += 1
    ret << i
  end
end

puts sum
puts ret.join(' ') unless ret.empty?
