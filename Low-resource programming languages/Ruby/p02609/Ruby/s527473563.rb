N = gets.to_i
x = gets.to_s.chomp
array = Array.new(N){x.dup}
for idx in 0..N-1
  array[idx][idx] == "1" ? (array[idx][idx] = "0") : (array[idx][idx] = "1")
end

def popcount(i,x)
  return i if x == 0
  n = x.to_s(2).count("1")
  result = x.to_i % n
  popcount(i+1,result)
end

array.each do |a|
  puts popcount(0,a.to_i(2))
end
