def mod(m, arr)
  arr.map do |a|
    m % a
  end.inject(&:+)
end

lines = $stdin.read
array = lines.split("\n")
N = array[0].to_i
A = array[1].split(" ").map(&:to_i).sort
SUM = A.inject(&:+)
ans = []

for e in 1..10**5
  f = mod(e, A)
  #puts "f=#{f}=#{mod(e, A)}"
  ans << f
end

#p ans
puts ans.max