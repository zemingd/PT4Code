N = gets.to_i
arr = []
N.times { arr<< gets.to_i}
min = arr[0]
if arr.size == 2
  min = arr[0].gcd(arr[1])
else
  (0..N-2).each do |i|
    min = min.gcd(arr[i+1])
  end
end
puts min