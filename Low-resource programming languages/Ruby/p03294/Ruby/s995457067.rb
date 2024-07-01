lines = $stdin.read
array = lines.split("\n")

def mod(m, arr)
  arr.map do |a|
    m % a
  end.inject(&:+)
end

N = array[0].to_i
A = array[1].split(" ").map(&:to_i).sort
SUM = A.inject(&:+)

ans = 0

for e in 1..10**5
  f = mod(e, A)
  ans = [f,ans].max
end

#p ans
puts ans
